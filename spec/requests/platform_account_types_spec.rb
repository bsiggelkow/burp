require 'rails_helper'

RSpec.describe "PlatformAccountTypes", :type => :request do
  describe "GET /platform_account_types" do
    it "works! (now write some real specs)" do
      get platform_account_types_path
      expect(response.status).to be(200)
    end
  end
end
