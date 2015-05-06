require "rails_helper"

RSpec.describe DucksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ducks").to route_to("ducks#index")
    end

    it "routes to #new" do
      expect(:get => "/ducks/new").to route_to("ducks#new")
    end

    it "routes to #show" do
      expect(:get => "/ducks/1").to route_to("ducks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ducks/1/edit").to route_to("ducks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ducks").to route_to("ducks#create")
    end

    it "routes to #update" do
      expect(:put => "/ducks/1").to route_to("ducks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ducks/1").to route_to("ducks#destroy", :id => "1")
    end

  end
end
