json.array!(@platform_target_types) do |platform_target_type|
  json.extract! platform_target_type, :id, :name, :platform_id, :endpoint, :schema, :field_mapping
  json.url platform_target_type_url(platform_target_type, format: :json)
end
