require "rails_helper"

RSpec.describe PlatformCreativeTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_creative_types").to route_to("platform_creative_types#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_creative_types/new").to route_to("platform_creative_types#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_creative_types/1").to route_to("platform_creative_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_creative_types/1/edit").to route_to("platform_creative_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_creative_types").to route_to("platform_creative_types#create")
    end

    it "routes to #update" do
      expect(:put => "/platform_creative_types/1").to route_to("platform_creative_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_creative_types/1").to route_to("platform_creative_types#destroy", :id => "1")
    end

  end
end
