require 'rails_helper'

RSpec.describe "PlatformAdSets", :type => :request do
  describe "GET /platform_ad_sets" do
    it "works! (now write some real specs)" do
      get platform_ad_sets_path
      expect(response.status).to be(200)
    end
  end
end
