class AddNullfalseToSongs < ActiveRecord::Migration[5.1]
  def change
    change_column_null :songs, :name, false
    change_column_null :songs, :artist, false
  end
end
