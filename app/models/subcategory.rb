class Subcategory < ApplicationRecord
  # Model relations:
  has_many :listings, dependent: :destroy
  belongs_to :category

  # Set the search options for drop down selections in forms:
  def self.search_select_options
    subcategory_list = Subcategory.all.collect do |subcat|
      [subcat.name, subcat.name]
    end
  end
end
