class AddLocationIdToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :location_id, :integer
  end
end
