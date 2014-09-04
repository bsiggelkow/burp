require 'rails_helper'

RSpec.describe "PlatformInitiativeTypes", :type => :request do
  describe "GET /platform_initiative_types" do
    it "works! (now write some real specs)" do
      get platform_initiative_types_path
      expect(response.status).to be(200)
    end
  end
end
