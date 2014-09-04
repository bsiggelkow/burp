require "rails_helper"

RSpec.describe PlatformAdsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_ads").to route_to("platform_ads#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_ads/new").to route_to("platform_ads#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_ads/1").to route_to("platform_ads#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_ads/1/edit").to route_to("platform_ads#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_ads").to route_to("platform_ads#create")
    end

    it "routes to #update" do
      expect(:put => "/platform_ads/1").to route_to("platform_ads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_ads/1").to route_to("platform_ads#destroy", :id => "1")
    end

  end
end
