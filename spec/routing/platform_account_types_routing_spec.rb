require "rails_helper"

RSpec.describe PlatformAccountTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_account_types").to route_to("platform_account_types#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_account_types/new").to route_to("platform_account_types#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_account_types/1").to route_to("platform_account_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_account_types/1/edit").to route_to("platform_account_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_account_types").to route_to("platform_account_types#create")
    end

    it "routes to #update" do
      expect(:put => "/platform_account_types/1").to route_to("platform_account_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_account_types/1").to route_to("platform_account_types#destroy", :id => "1")
    end

  end
end
