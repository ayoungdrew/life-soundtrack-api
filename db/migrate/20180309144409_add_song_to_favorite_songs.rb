class AddSongToFavoriteSongs < ActiveRecord::Migration[5.1]
  def change
    add_reference :favorite_songs, :song, index: true, foreign_key: true, null: false
  end
end
