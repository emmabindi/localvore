class Listing < ApplicationRecord
  validates :title, presence: true
  validates_length_of :title, within: 1..30, too_long: "Please ensure title is less than 30 characters long"
  validates :price, presence: true
  validates :qty, presence: true
  
  belongs_to :category, dependent: :destroy

  # enum measurement_types: ['each', 'bunch', '500g', '1kg', 'other']
end
