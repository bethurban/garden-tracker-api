class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :number
      t.boolean :potted
      t.date :planted

      t.timestamps
    end
  end
end
