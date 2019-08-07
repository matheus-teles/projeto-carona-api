class RidesController < ApplicationController
  def index
    rides = Ride.all
    render json: { rides: rides }
  end
end