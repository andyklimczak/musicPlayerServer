class UserController < ApplicationController
  #POST log_user
  #params facebook_id, name, email
  #returns the user
  def log_user
    user = User.where(facebook_id: params[:facebook_id]).first
    if user.nil?
      user = User.create(facebook_id: params[:facebook_id], name: params[:name], email: params[:email])
    end
    render :json user.songs_hash + user.artists_hash
      # :songs_hash => user.songs_hash.as_json + :artists_hash => user.artists_hash.as_json
  end
end
