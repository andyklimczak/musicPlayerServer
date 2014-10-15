class SongController < ApplicationController
  # POST set song to user
  # params = user: {email, name}, song: {title, artist}
  # returns the song
  def set_song_for_user
    user = User.find_by(email: params[:email], name: params[:name])
    song = Song.find_or_create_by(artist: params[:artist], title: params[:title])
    user.songs << song

    render json: song
  end
end
