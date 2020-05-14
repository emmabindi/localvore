class Category < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :subcategories

  # def self.select_options
  #   Category.order("name").collect do |cat |
  #     [cat.name, cat.id]
  #   end
  # end

  def self.search_select_options
    category_list = Category.all.collect do |cat|
      [cat.name, cat.name]
    end
  end
end
