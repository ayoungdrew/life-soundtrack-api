class AddNullfalseToPhaseFavoriteSongs < ActiveRecord::Migration[5.1]
  def change
    change_column_null :phases, :start_date, false
    change_column_null :phases, :end_date, false
    change_column_null :favorite_songs, :story, false
  end
end
