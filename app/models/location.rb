class Location < ApplicationRecord
  belongs_to :user

  def self.search_select_options
    suburb_list = Location.all.collect do |loc|
      [loc.suburb, loc.suburb]
    end
  end
end

