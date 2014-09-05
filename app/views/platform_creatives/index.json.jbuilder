json.array!(@platform_creatives) do |platform_creative|
  json.extract! platform_creative, :id, :name, :uri, :features, :creative_id, :platform_creative_type_id
  json.url platform_creative_url(platform_creative, format: :json)
end
