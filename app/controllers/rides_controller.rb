class RidesController < ApplicationController
    def index
        rides = Ride.created
        render json: rides, include: 'driver' 
    end

    def create
        ride = Ride.new(create_params)
    
        if ride.save
            head 201
        else
            render status: 406, json: ride.errors
        end
    end

    def create_params
      params.permit(:driver_id, :capacity, :origin, :destination)
    end
end