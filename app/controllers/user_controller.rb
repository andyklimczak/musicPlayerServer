class UserController < ApplicationController
  #POST create_user
  #params user params
  #returns the user
  def create
    user = User.create(facebook_id: params[:facebook_id], name: params[:name], email: params[:email])
    if user.save
      render json: user
    else
      render json: nil
    end
  end
  # POST get_user
  # params  email
  # returns the user
  def get_user
    user = User.find_by(facebook_id: params[:facebook_id])
    if not user.nil?
      render json: user
    else
      render json: nil
    end
  end
end
