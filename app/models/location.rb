class Location < ApplicationRecord
  # Model relation:
  belongs_to :user

  # Geocoder config to convert address to co-ords (using API of choice) and store these in long/lat attributes within location table:
  geocoded_by :full_address
  after_validation :geocode

  # Set the search options for drop down selections in forms:
  def self.search_select_options
    suburb_list = Location.all.collect do |loc|
      [loc.suburb, loc.suburb]
    end
  end

  # Combines all address fields to create a full address that geocoding can use to convert to co-ordinates:
  def full_address
    [street_address, suburb, state, country].compact.join(', ')
  end
end

