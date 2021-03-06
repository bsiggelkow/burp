require "rails_helper"

RSpec.describe AdSetsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ad_sets").to route_to("ad_sets#index")
    end

    it "routes to #new" do
      expect(:get => "/ad_sets/new").to route_to("ad_sets#new")
    end

    it "routes to #show" do
      expect(:get => "/ad_sets/1").to route_to("ad_sets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ad_sets/1/edit").to route_to("ad_sets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ad_sets").to route_to("ad_sets#create")
    end

    it "routes to #update" do
      expect(:put => "/ad_sets/1").to route_to("ad_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ad_sets/1").to route_to("ad_sets#destroy", :id => "1")
    end

  end
end
