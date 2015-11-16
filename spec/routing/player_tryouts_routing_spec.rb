require "rails_helper"

RSpec.describe PlayerTryoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/player_tryouts").to route_to("player_tryouts#index")
    end

    it "routes to #new" do
      expect(:get => "/player_tryouts/new").to route_to("player_tryouts#new")
    end

    it "routes to #show" do
      expect(:get => "/player_tryouts/1").to route_to("player_tryouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/player_tryouts/1/edit").to route_to("player_tryouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/player_tryouts").to route_to("player_tryouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/player_tryouts/1").to route_to("player_tryouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/player_tryouts/1").to route_to("player_tryouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/player_tryouts/1").to route_to("player_tryouts#destroy", :id => "1")
    end

  end
end
