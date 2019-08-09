class RidesController < ApplicationController
    def index
        render json: Ride.all
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