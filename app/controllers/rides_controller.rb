class RidesController < ApplicationController
  def index
    rides = Ride.all
    render json: rides, include: 'driver' 
  end
end