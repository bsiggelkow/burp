json.array!(@platform_account_types) do |platform_account_type|
  json.extract! platform_account_type, :id, :name, :platform_id, :endpoint, :schema, :field_mapping
  json.url platform_account_type_url(platform_account_type, format: :json)
end
