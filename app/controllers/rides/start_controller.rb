module Rides
  class StartController < ApplicationController
    def create
      ride = Ride.find(params[:ride_id])
      if ride.update(status: 1)
        render status: 201, json: ride
      else
        render status: 406, json: ride.errors
      end
    end
  end
end