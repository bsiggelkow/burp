json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :objective, :campaign_group_status, :buying_type
  json.url campaign_url(campaign, format: :json)
end
