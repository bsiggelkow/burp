require 'rails_helper'

RSpec.describe "PlatformCreatives", :type => :request do
  describe "GET /platform_creatives" do
    it "works! (now write some real specs)" do
      get platform_creatives_path
      expect(response.status).to be(200)
    end
  end
end
