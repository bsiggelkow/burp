json.array!(@platform_initiative_types) do |platform_initiative_type|
  json.extract! platform_initiative_type, :id, :name, :platform_id, :endpoint, :schema, :field_mapping
  json.url platform_initiative_type_url(platform_initiative_type, format: :json)
end
