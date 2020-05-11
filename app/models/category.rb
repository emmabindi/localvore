class Category < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :subcategories
end
