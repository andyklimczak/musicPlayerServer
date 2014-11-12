class UserController < ApplicationController
  #POST log_user
  #params facebook_id, name, email
  #returns the user
  def log_user
    user = User.where(facebook_id: params[:facebook_id]).first
    if user.nil?
      user = User.create(facebook_id: params[:facebook_id], name: params[:name], email: params[:email])
    end
    p user.songs_hash
    p user.artists_hash
    render :json user.songs_hash
    # render :json => {:songs => user.songs_hash, :artists => user.artists_hash }
  end
end
