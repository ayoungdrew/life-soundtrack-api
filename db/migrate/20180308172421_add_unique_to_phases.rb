class AddUniqueToPhases < ActiveRecord::Migration[5.1]
  def change
    add_index :phases, [:user_id, :name], unique: true
  end
end
