class AddUomToListing < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :uom, null: false, foreign_key: true
  end
end
