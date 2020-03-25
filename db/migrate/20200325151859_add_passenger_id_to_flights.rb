class AddPassengerIdToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :passenger_id, :integer
  end
end
