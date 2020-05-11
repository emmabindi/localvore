class Subcategory < ApplicationRecord
  has_many :listings, dependent: :destroy
  belongs_to :category
end
