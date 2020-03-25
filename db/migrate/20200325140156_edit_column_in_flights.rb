class EditColumnInFlights < ActiveRecord::Migration[6.0]
  def change
    rename_column :flights, :duration, :duration_in_minutes
  end
end
