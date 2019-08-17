class RidesController < ApplicationController
    def index
        rides = Ride.all
        render json: rides, include: 'driver' 
    end

    def create
        ride = Ride.new(create_params)
    
        if ride.save
            head 201
        else
            render status: 403, json: ride
        end
    end

    def create_params
      params.permit(:driver_id, :capacity, :origin, :destination)
    end
end