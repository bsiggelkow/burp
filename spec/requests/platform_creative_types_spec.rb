require 'rails_helper'

RSpec.describe "PlatformCreativeTypes", :type => :request do
  describe "GET /platform_creative_types" do
    it "works! (now write some real specs)" do
      get platform_creative_types_path
      expect(response.status).to be(200)
    end
  end
end
