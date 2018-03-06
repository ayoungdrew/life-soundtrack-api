class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.string :artist, null: false
      t.text :story

      t.timestamps
    end
  end
end
