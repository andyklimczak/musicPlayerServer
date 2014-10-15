class SongController < ApplicationController
  # POST set song to user
  # params = user: {email, name}, song: {title, artist}
  # returns the song
  def set_song_for_user
    user = User.find_by(email: params[:email])
    song = Song.find_or_create_by(artist: params[:artist], title: params[:title])
    user.songs << song

    render json: song
  end
  #POST get user songs
  # params = email, name
  #returns list of artist the user has listened to
  def get_user_artists
    user = User.find_by(email: params[:email])
    artist_list = []
    user.songs.find_each do |song|
      artist_list << song.artist
    end
    artist_list.uniq!
    render json: artist_list
  end
end
