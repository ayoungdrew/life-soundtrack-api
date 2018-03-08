class CreatePhases < ActiveRecord::Migration[5.1]
  def change
    create_table :phases do |t|
      t.references :user, foreign_key: true, null: false
      t.string :name, null: false
      t.integer :start_date
      t.integer :end_date

      t.timestamps
    end
  end
end
