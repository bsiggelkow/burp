json.array!(@platform_ad_sets) do |platform_ad_set|
  json.extract! platform_ad_set, :id, :name, :uri, :features, :ad_set_id, :platform_ad_set_type_id
  json.url platform_ad_set_url(platform_ad_set, format: :json)
end
