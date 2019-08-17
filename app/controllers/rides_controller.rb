class RidesController < ApplicationController
    def index
        rides = Ride.created
        render json: rides, include: 'driver' 
    end

    def create
        ride = Ride.new(params)
    
        if ride.save
            head 201
        else
            render status: 406, json: ride.errors
        end
    end
end