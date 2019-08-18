class RidesController < ApplicationController
    def index
        rides = Ride.created
        render json: rides, include: 'driver' 
    end

    def show
      ride = Ride.includes(:passengers).find(params[:id])
      render :json => ride, :include => [
        :driver, 
        :passengers] , status: :ok
    end

    def create
        ride = Ride.new(create_params)
    
        if ride.save
            render status: 201, json: ride
        else
            render status: 406, json: ride.errors
        end
    end

    def create_params
      params.permit(:driver_id, :capacity, :origin, :destination)
    end
end