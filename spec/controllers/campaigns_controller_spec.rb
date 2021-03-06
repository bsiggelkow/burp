require "rails_helper"

RSpec.describe CampaignsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the campaigns into @campaigns" do
      campaign1, campaign2 = Campaign.create!(name: 'foo'), Campaign.create!(name: 'bar')
      get :index

      expect(assigns(:campaigns)).to match_array([campaign1, campaign2])
    end
  end
end