require 'rails_helper'

RSpec.describe "campaigns resource", :type => :request do
  it 'fetches the list of campaigns' do
    get '/campaigns.json'
    expect(response).to be_success
  end
end