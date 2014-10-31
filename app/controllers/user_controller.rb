class UserController < ApplicationController
  #PUT create_user
  #params user params
  #returns the user
  def create
    user = User.create(facebook_id: params[:facebook_id], name: params[:name], email: params[:email])
    if user.save!
      render json: user.to_json
    else
      render json: nil
    end
  end
  # POST get_user
  # params facebook_id
  # returns the user
  def get_user
    user = User.find_by(facebook_id: params[:facebook_id])
    if not user.nil?
      render json: user.to_json
    else
      render json: nil
    end
  end
end
