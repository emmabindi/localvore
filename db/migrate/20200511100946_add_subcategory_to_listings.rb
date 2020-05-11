class AddSubcategoryToListings < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :subcategory, null: false, foreign_key: true
  end
end
