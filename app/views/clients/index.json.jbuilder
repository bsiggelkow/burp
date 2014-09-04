json.array!(@clients) do |client|
  json.extract! client, :id, :name, :contact
  json.url client_url(client, format: :json)
end
