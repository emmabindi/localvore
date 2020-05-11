class AddMeasurementToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :measurement, :string
  end
end
