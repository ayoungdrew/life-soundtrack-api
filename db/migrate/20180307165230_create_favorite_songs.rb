class CreateFavoriteSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_songs do |t|
      t.references :user, foreign_key: true
      t.references :song, foreign_key: true
      t.text :story
      t.integer :story_date, null: false

      t.timestamps
    end
  end
end
