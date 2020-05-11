class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.varchar :title
      t.string :photo
      t.integer :price
      t.enum :qty
      t.text :description

      t.timestamps
    end
  end
end
