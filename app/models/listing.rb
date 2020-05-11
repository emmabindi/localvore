class Listing < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  validates :qty, presence: true
end
