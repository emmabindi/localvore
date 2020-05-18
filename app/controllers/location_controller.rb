class LocationController < ApplicationController
  def index
    @locations = Location.all
    if params[:type] == "json"
      data = @locations.map do |location|
        [location.latitude, location.longitude]
      end
      render json: {data: data}
  end

  def show
    @location = Location.find(params[:id])
    if params[:type] == "json"
      render json: {data: [@location.latitude, @location.longitude]}
    end
  end
end
