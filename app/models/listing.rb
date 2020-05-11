class Listing < ApplicationRecord
  validates :title, presence: true, length: 1..30
  validates :price, presence: true
  validates :qty, presence: true
end
