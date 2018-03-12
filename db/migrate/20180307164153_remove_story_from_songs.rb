class RemoveStoryFromSongs < ActiveRecord::Migration[5.1]
  def change
    remove_column :songs, :story, :text
  end
end
