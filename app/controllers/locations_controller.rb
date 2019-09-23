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

  def create
    @location = Location.new({
        name:            params[:name],
        blurb:           params[:blurb],
        citation:        params[:citation],
        email_address:   params[:email_address],
        street:          params[:street],
        city:            params[:city],
        state:           params[:state],
        country:         params[:country],
        suggestor_email: params[:suggestor_email],
        pending: true
      })

    if @location.save
      flash[:success] = "Location successfully submitted"
      render :index
    else
      flash[:notice] = "Error - please try again"
      redirect_to :new
    end
  end
end
