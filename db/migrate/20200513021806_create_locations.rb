class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :suburb
      t.string :city
      t.string :state
      t.string :country
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
