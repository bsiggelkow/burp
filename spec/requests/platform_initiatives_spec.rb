require 'rails_helper'

RSpec.describe "PlatformInitiatives", :type => :request do
  describe "GET /platform_initiatives" do
    it "works! (now write some real specs)" do
      get platform_initiatives_path
      expect(response.status).to be(200)
    end
  end
end
