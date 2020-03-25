class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :duration_in_minutes
      t.string :origin
      t.string :destination
      t.integer :plane_id
    end
  end
end
