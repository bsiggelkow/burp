require 'rails_helper'

RSpec.describe "campaigns resource", :type => :request do
  it 'fetches the list of campaigns' do
    get '/campaigns.json'
    expect(response.status).to eq(200)
    expect(json).to eq([])
  end
end