json.array!(@platform_ads) do |platform_ad|
  json.extract! platform_ad, :id, :name, :uri, :features, :ad_id, :platform_ad_type_id
  json.url platform_ad_url(platform_ad, format: :json)
end
