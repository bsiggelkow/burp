json.array!(@platform_initiatives) do |platform_initiative|
  json.extract! platform_initiative, :id, :name, :uri, :features, :initiative_id, :platform_initiative_type_id
  json.url platform_initiative_url(platform_initiative, format: :json)
end
