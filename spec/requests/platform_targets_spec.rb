require 'rails_helper'

RSpec.describe "PlatformTargets", :type => :request do
  describe "GET /platform_targets" do
    it "works! (now write some real specs)" do
      get platform_targets_path
      expect(response.status).to be(200)
    end
  end
end
