class AddUniqueToFavoriteSongs < ActiveRecord::Migration[5.1]
  def change
        add_index :favorite_songs, [:user_id, :song_id, :story_date], unique: true
  end
end
