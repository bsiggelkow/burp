require 'rails_helper'

RSpec.describe "PlatformTargetTypes", :type => :request do
  describe "GET /platform_target_types" do
    it "works! (now write some real specs)" do
      get platform_target_types_path
      expect(response.status).to be(200)
    end
  end
end
