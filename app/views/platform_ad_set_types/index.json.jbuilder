json.array!(@platform_ad_set_types) do |platform_ad_set_type|
  json.extract! platform_ad_set_type, :id, :name, :platform_id, :endpoint, :schema, :field_mapping
  json.url platform_ad_set_type_url(platform_ad_set_type, format: :json)
end
