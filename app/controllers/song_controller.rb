class SongController < ApplicationController
  # POST set song to user
  # params = facebook_id, artist, title, album
  # returns the song
  def set_song_for_user
    user = User.find_by(facebook_id: params[:facebook_id])
    song = Song.find_or_create_by(artist: params[:artist], title: params[:title], album: params[:album])
    user.songs << song

    render json: song
  end
  #POST get user songs
  # params = facebook_id
  #returns list of artist the user has listened to
  def get_user_artists
    user = User.find_by(facebook_id: params[:facebook_id])
    artist_list = []
    user.songs.find_each do |song|
      artist_list << song.artist
    end
    artist_list.uniq!
    render json: artist_list
  end

  #post update_session
  #params: id, song : {title : count}, artist : { name : count }
  def update_session
    #user = User.where(facebook_id: params[:id]).first
    p params[:songs]
    p params[:artists]
    end
  end
end
