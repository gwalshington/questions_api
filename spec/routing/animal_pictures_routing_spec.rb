require "rails_helper"

RSpec.describe AnimalPicturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/animal_pictures").to route_to("animal_pictures#index")
    end


    it "routes to #show" do
      expect(:get => "/animal_pictures/1").to route_to("animal_pictures#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/animal_pictures").to route_to("animal_pictures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/animal_pictures/1").to route_to("animal_pictures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/animal_pictures/1").to route_to("animal_pictures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/animal_pictures/1").to route_to("animal_pictures#destroy", :id => "1")
    end

  end
end
