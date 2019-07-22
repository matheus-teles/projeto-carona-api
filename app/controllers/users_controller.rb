class UsersController < ApplicationController
  def create
    user = User.new(create_params)

    if user.save
      render status: 201, json: user
    else
      render status: 422, json: user
    end
  end

  private

  def create_params
    params.permit(:username, :password, :password_confirmation)
  end
end
