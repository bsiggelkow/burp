json.array!(@platform_ad_types) do |platform_ad_type|
  json.extract! platform_ad_type, :id, :name, :platform_id, :endpoint, :schema, :field_mapping
  json.url platform_ad_type_url(platform_ad_type, format: :json)
end
