class LocationsController < ApplicationController
  def index
    approved_locations = Location.where(pending: false)
    @locations = approved_locations

    a = params["address"]
    @locations = approved_locations.near(a) unless a.nil?

    if @locations.length == 0
      @locations = approved_locations
      flash[:notice] = "Unable to find results; please check address"
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end
end
