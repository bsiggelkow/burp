json.array!(@platform_creative_types) do |platform_creative_type|
  json.extract! platform_creative_type, :id, :name, :platform_id, :endpoint, :schema, :field_mapping
  json.url platform_creative_type_url(platform_creative_type, format: :json)
end
