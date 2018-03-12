class RemoveStoryFromSongs < ActiveRecord::Migration[5.1]
  def change
    # remove_column :songs, :story, :text
    create_table :songs do |t|
      t.string :name
      t.string :artist

      t.timestamps
    end
  end
end
