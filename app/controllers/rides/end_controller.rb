module Rides
  class EndController < ApplicationController
    def create
      ride = Ride.find(params[:ride_id])
      if ride.update(status: 2)
        render status: 200, json: ride
      else
        render status: 406, json: ride.errors
      end
    end
  end
end