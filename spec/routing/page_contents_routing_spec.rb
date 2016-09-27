require "rails_helper"

RSpec.describe PageContentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/page_contents").to route_to("page_contents#index")
    end

    # it "routes to #new" do
    #   expect(:get => "/page_contents/new").to route_to("page_contents#new")
    # end

    it "routes to #show" do
      expect(:get => "/page_contents/1").to route_to("page_contents#show", :id => "1")
    end

    # it "routes to #edit" do
    #   expect(:get => "/page_contents/1/edit").to route_to("page_contents#edit", :id => "1")
    # end

    it "routes to #create" do
      expect(:post => "/page_contents").to route_to("page_contents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/page_contents/1").to route_to("page_contents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/page_contents/1").to route_to("page_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/page_contents/1").to route_to("page_contents#destroy", :id => "1")
    end

  end
end
