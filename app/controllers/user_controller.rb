class UserController < ApplicationController
  #POST log_user
  #params facebook_id, name, email
  #returns the user
  def log_user
    user = User.where(facebook_id: params[:facebook_id]).first
    if user.nil?
      user = User.create(facebook_id: params[:facebook_id], name: params[:name], email: params[:email])
    end
    render json => {
      :songs_hash => user.as_json(:include => :songs_hash),
      :artists_hash => user.as_json(:include => :artists_hash)
    }
  end
end
