require "rails_helper"

RSpec.describe WouldYouRathersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/would_you_rathers").to route_to("would_you_rathers#index")
    end


    it "routes to #show" do
      expect(:get => "/would_you_rathers/1").to route_to("would_you_rathers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/would_you_rathers").to route_to("would_you_rathers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/would_you_rathers/1").to route_to("would_you_rathers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/would_you_rathers/1").to route_to("would_you_rathers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/would_you_rathers/1").to route_to("would_you_rathers#destroy", :id => "1")
    end

  end
end
