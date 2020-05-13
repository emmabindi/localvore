class RemoveLocationFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :location, null: false, foreign_key: true
  end
end
