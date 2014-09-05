json.array!(@platform_targets) do |platform_target|
  json.extract! platform_target, :id, :name, :uri, :features, :target_id, :platform_target_type_id
  json.url platform_target_url(platform_target, format: :json)
end
