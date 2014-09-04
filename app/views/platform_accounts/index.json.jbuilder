json.array!(@platform_accounts) do |platform_account|
  json.extract! platform_account, :id, :name, :uri, :features, :account_id, :platform_account_type_id
  json.url platform_account_url(platform_account, format: :json)
end
