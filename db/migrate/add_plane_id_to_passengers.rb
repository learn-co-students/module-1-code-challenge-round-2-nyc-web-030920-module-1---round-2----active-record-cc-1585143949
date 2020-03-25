class AddPlaneIdToPassengers < ActiveRecord::Migration[5.2]
    def change 
        add_column :passengers, :plane_id, :integer 
    end 
end 