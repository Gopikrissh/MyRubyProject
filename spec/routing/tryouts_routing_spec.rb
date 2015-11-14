require "rails_helper"

RSpec.describe TryoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tryouts").to route_to("tryouts#index")
    end

    it "routes to #new" do
      expect(:get => "/tryouts/new").to route_to("tryouts#new")
    end

    it "routes to #show" do
      expect(:get => "/tryouts/1").to route_to("tryouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tryouts/1/edit").to route_to("tryouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tryouts").to route_to("tryouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tryouts/1").to route_to("tryouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tryouts/1").to route_to("tryouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tryouts/1").to route_to("tryouts#destroy", :id => "1")
    end

  end
end
