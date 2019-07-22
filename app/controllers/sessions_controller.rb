class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render status: 201, json: user
    else
      head 400
    end
  end
end