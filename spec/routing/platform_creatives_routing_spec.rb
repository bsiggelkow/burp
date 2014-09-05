require "rails_helper"

RSpec.describe PlatformCreativesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_creatives").to route_to("platform_creatives#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_creatives/new").to route_to("platform_creatives#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_creatives/1").to route_to("platform_creatives#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_creatives/1/edit").to route_to("platform_creatives#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_creatives").to route_to("platform_creatives#create")
    end

    it "routes to #update" do
      expect(:put => "/platform_creatives/1").to route_to("platform_creatives#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_creatives/1").to route_to("platform_creatives#destroy", :id => "1")
    end

  end
end
