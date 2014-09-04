json.array!(@initiatives) do |initiative|
  json.extract! initiative, :id, :name, :description, :account_id
  json.url initiative_url(initiative, format: :json)
end
