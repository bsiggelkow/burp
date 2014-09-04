json.array!(@platforms) do |platform|
  json.extract! platform, :id, :name, :base_url, :attributes
  json.url platform_url(platform, format: :json)
end
