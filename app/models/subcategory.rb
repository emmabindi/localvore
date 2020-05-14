class Subcategory < ApplicationRecord
  has_many :listings, dependent: :destroy
  belongs_to :category

  def self.search_select_options
    Subcategory.order("name").collect do |subcat |
      [subcat.name, subcat.id]
    end
  end

  def self.search_select_options
    subcategory_list = Subcategory.all.collect do |subcat|
      [subcat.name, subcat.name]
    end
  end
end
