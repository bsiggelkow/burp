module PlatformConnection
  def connection(url)
    Faraday.new(:url => url) do |conn|
      conn.request :json
      conn.response :json
      conn.adapter Faraday.default_adapter
    end
  end

  def remote_id(response)
    response.body['result']['_id']['$oid']
  end
end
