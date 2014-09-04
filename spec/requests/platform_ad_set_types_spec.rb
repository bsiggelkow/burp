require 'rails_helper'

RSpec.describe "PlatformAdSetTypes", :type => :request do
  describe "GET /platform_ad_set_types" do
    it "works! (now write some real specs)" do
      get platform_ad_set_types_path
      expect(response.status).to be(200)
    end
  end
end
