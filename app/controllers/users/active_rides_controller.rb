module Users
  class ActiveRidesController < ApplicationController
    def show
      user = User.find(params[:user_id])
      ride_as_driver = Ride.active.where(driver: user)
      ride_as_passenger = Ride.active.joins(:passengers).merge(User.where(id: user.id))
      if ride_as_driver.any?
        render json: { user_role: :driver, ride: ride_as_driver.first }
      elsif ride_as_passenger.any?
        render json: { user_role: :passenger, ride: ride_as_passenger.first }
      else
        head 404
      end
    end
  end
end