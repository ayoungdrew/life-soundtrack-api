require "rails_helper"

RSpec.describe FavoriteSongsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/favorite_songs").to route_to("favorite_songs#index")
    end


    it "routes to #show" do
      expect(:get => "/favorite_songs/1").to route_to("favorite_songs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/favorite_songs").to route_to("favorite_songs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/favorite_songs/1").to route_to("favorite_songs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/favorite_songs/1").to route_to("favorite_songs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/favorite_songs/1").to route_to("favorite_songs#destroy", :id => "1")
    end

  end
end
