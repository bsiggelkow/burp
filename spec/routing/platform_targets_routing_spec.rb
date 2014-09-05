require "rails_helper"

RSpec.describe PlatformTargetsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_targets").to route_to("platform_targets#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_targets/new").to route_to("platform_targets#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_targets/1").to route_to("platform_targets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_targets/1/edit").to route_to("platform_targets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_targets").to route_to("platform_targets#create")
    end

    it "routes to #update" do
      expect(:put => "/platform_targets/1").to route_to("platform_targets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_targets/1").to route_to("platform_targets#destroy", :id => "1")
    end

  end
end
