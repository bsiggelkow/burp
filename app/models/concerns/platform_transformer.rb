# Transform an abstract object to a platform-specific object
module PlatformTransformer

  # Transforms a source (e.g. Ad) object 
  # to a platform-specific target object (e.g. PlatformAd)
  # using the +field_mapping+ 
  def transform(source, target)
    field_mapping.each do |mapping|
      apply_mapping(mapping, source, target)
    end    
  end

  private

  def apply_mapping(mapping, source, target)
    kwargs_dict = source_field_info_to_kwargs_dict(source, mapping['source_field_info'])
    transform = mapping['transform'] 
    target_field = mapping['target_field']

    value = case transform
    when NilClass
      get_value_from_source_field(src, mapping['source_field_info'])
    when transform['value']
      transform['value']
    when transform['format']
      transform['format'] % kwargs_dict
    when transform['callback'] && transform['module']
      call_transform_callback(transform, kwargs_dict)
    else
      raise "Invalid transform format for: #{transform}"
    end

    set_target_field_value(target, target_field, value)
  end

  def source_field_info_to_kwargs_dict(src, field_info)
    kwargs_dict = {}
    case field_info
    when NilClass
      nil
    when String
      set_source_field_in_kwargs_dict(src, field_info, kwargs_dict)
    when Enumerable
      field_info.each {|f| set_source_field_in_kwargs_dict(src, f, kwargs_dict)}
    else
      raise Exception "Unexpected field info type: #{field_info.class}"
    end
  end

  def set_source_field_in_kwargs_dict(src, source_field, kwargs_dict)
    kwargs_dict[source_field.replace('.', '__').to_sym] = get_value_from_source_field(src, source_field)
  end

  def get_value_from_source_field(src, field_name)
    hierarchy = field_name.split(%r{[\.\[]+})
    hierarchy.reduce(src) do |target, field|
      if field.end_with? '['
        target[field[0...-1]]
      else
        target.send(field)
      end
    end
  end

  def call_transform_callback(transform, kwargs_dict)
    "Transforms::#{transform['module']}".constantize.send(transform['callback'], kwargs_dict)
  end

  def set_target_field_value(target, field_name, value)
    # support field_name formats like a.b[c], or a[b][c].d.f, etc.
    hierarchy = field_name.split(%r{[\.\[]+})

    hierarchy[0...-1].each do |item|
      if item.end_with? ']'
        target = target[item[0...-1]] # if item is 'foo]' call target['foo']
      else
        target.send(item)
      end
    end

    last_item = hierarchy[-1]
    if last_item.end_with? ']'
      target[last_item[0...-1]] = value
    else
      target.send("#{last_item}=", value)
    end
  end

end