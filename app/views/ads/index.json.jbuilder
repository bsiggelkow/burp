json.array!(@ads) do |ad|
  json.extract! ad, :id, :name, :ad_set_id, :target_id, :creative_id
  json.url ad_url(ad, format: :json)
end
