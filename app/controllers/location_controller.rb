class LocationController < ApplicationController
  def index
    @locations = Location.all
    if params[:type] == "json"
      data = @locations.map do |location|
        [location.latitude, location.longitude]
      end
      render json: {data: data}
    end
  end

  def show
    @location = Location.find(params[:id])
    if params[:type] == "json"
      render json: {data: [@location.latitude, @location.longitude]}
    end
  end

  def search
    location = Geocoder.search(params[:search])[0].data["geometry"]["location"]
    @locations = Location.all 
    data = @locations.map do |location|
      [location.latitude, location.longitude]
    end
    render json: {data: data, center: [location["lat"], location["lng"]]}
  end
end
