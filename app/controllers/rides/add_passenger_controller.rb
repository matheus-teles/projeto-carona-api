module Rides
  class AddPassengerController < ApplicationController
    def create
      ride = Ride.find(params[:ride_id])
      user = User.find(params[:user_id])

      if ride.passengers.count < ride.capacity && ride.passengers.where(id: 2).count <= 0
        ride.passengers << user
        ride.capacity = ride.capacity - 1
        if ride.save
          render status: 201, json: ride
        else
          render status: 406, json: ride.errors
        end
      else
        ride.errors.add(:base, "Ride is full")
        render status: 406, json: ride.errors
      end
    end
  end
end