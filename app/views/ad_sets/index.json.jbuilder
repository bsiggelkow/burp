json.array!(@ad_sets) do |ad_set|
  json.extract! ad_set, :id, :name, :initiative_id
  json.url ad_set_url(ad_set, format: :json)
end
