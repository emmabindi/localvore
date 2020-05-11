class AddCategoryToSubcategories < ActiveRecord::Migration[6.0]
  def change
    # add_reference :subcategories, :category, null: false, foreign_key: true
    add_reference :subcategories, :category, foreign_key: true
  end
end
