class Location < ApplicationRecord
  belongs_to :user

  geocoded_by :full_address
  after_validation :geocode

  def self.search_select_options
    suburb_list = Location.all.collect do |loc|
      [loc.suburb, loc.suburb]
    end
  end

  def full_address
    # self.street_address + self.suburb + self.state + self.country
    # [local_address, state, country].compact.join(', ')
    [street_address, suburb, state, country].compact.join(', ')
  end
end

