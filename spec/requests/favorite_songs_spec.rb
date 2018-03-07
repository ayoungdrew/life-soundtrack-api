require 'rails_helper'

RSpec.describe "FavoriteSongs", type: :request do
  describe "GET /favorite_songs" do
    it "works! (now write some real specs)" do
      get favorite_songs_path
      expect(response).to have_http_status(200)
    end
  end
end
