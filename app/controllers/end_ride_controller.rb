class EndRideController < ApplicationController
    def create
        ride = Ride.find(params[:ride_id])
        if ride.update(status: 2)
            head 200
        else
            render status: 406, json: ride.errors
        end
    end
end