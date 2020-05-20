class Uom < ApplicationRecord
  # Model relations:
  has_many :listings, dependent: :destroy
end
