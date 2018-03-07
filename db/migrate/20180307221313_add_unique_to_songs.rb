class AddUniqueToSongs < ActiveRecord::Migration[5.1]
  def change
    add_index :songs, [:name, :artist], unique: true
  end
end
