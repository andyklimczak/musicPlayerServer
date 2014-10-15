class SongController < ApplicationController
  # POST set song to user
  # params = user: {email, name}, song: {title, artist}
  # returns the song
  def set_song_for_user
    user = User.find_by(user_params)
    song = Song.find_or_create_by(song_params)
    user.songs << song
    render json: song
  end
  private
  def song_params
    params.require(:song).permit(:title, :artist)
  end
  def user_params
    params.require(:user).permit(:email, :name)
  end
end
