class Location < ApplicationRecord
  belongs_to :user

  # def self.select_options
  #   Location.order("suburb").collect do |loc |
  #     [loc.suburb, loc.id]
  #   end
  # end

  def self.search_select_options
    suburb_list = Location.all.collect do |loc|
      [loc.suburb, loc.suburb]
    end
  end
end

