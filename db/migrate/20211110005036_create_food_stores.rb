class CreateFoodStores < ActiveRecord::Migration[6.0]
  def change
    create_table :food_stores do |t|
      t.string :name
      t.integer :zipCode
      t.string :city
      t.string :streetAddress
      t.integer :openHours
      t.integer :closeHours

      t.timestamps
    end
  end
end
