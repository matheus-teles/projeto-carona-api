class RidesController < ApplicationController
    def index
        rides = Ride.all
        render json: rides, include: 'driver' 
    end

    def create
        ride = Ride.new(params)
    
        if ride.save
            head 201
        else
            render status: 403, json: ride
        end
    end
end