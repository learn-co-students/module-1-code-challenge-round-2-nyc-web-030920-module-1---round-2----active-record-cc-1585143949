class AddPlaneIdToPassengers 
    def change 
        add_column :passengers, :plane_id, :integer 
    end 
end 