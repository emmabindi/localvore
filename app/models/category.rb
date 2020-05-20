class Category < ApplicationRecord
  # Model relations:
  has_many :listings
  has_many :subcategories

  # Set the search options for drop down selections in forms:
  def self.search_select_options
    category_list = Category.all.collect do |cat|
      [cat.name, cat.name]
    end
  end
end
