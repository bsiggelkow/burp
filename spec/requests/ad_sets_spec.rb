require 'rails_helper'

RSpec.describe "AdSets", :type => :request do
  describe "GET /ad_sets" do
    it "works! (now write some real specs)" do
      get ad_sets_path
      expect(response.status).to be(200)
    end
  end
end
