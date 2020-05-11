class CreateUoms < ActiveRecord::Migration[6.0]
  def change
    create_table :uoms do |t|
      t.string :unit

      t.timestamps
    end
  end
end
