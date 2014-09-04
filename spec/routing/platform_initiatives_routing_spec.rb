require "rails_helper"

RSpec.describe PlatformInitiativesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_initiatives").to route_to("platform_initiatives#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_initiatives/new").to route_to("platform_initiatives#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_initiatives/1").to route_to("platform_initiatives#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_initiatives/1/edit").to route_to("platform_initiatives#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_initiatives").to route_to("platform_initiatives#create")
    end

    it "routes to #update" do
      expect(:put => "/platform_initiatives/1").to route_to("platform_initiatives#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_initiatives/1").to route_to("platform_initiatives#destroy", :id => "1")
    end

  end
end
