class LocationsController < ApplicationController
  def index
    @locations = Location.all

    a = params["address"]
    @locations = Location.near(a) unless a.nil?

    if @locations.length == 0
      @locations = Location.all
      flash[:notice] = "Unable to find results; please check address"
    end
  end

  def show
    @location = Location.find(params[:id])
  end
end
