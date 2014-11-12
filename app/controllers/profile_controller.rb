class ProfileController < ApplicationController
  #post update_session
  #params: id, song : {title : count}, artist : { name : count }
  #app.post('update_session', facebook_id: "123", songs: {songname1:"count1", songname2:"count2"}, artists: {artist1:"artist1count", artist2:"artist2count"})
  def update_session
    p "i am here"
    # songs = JSON.parse params[:songs]
    # artists = JSON.parse params[:artists]
    user = User.where(facebook_id: params[:facebook_id]).first
    p params
    songs_hash = JSON.parse params[:songs]
    artists_hash = JSON.parse params[:artists]
    user.update(songs_hash, songs_hash.to_s)
    user.update(artists_hash, artists_hash.to_s)


    # songs.each do |song_pair|
    #   p song_pair

    # end
    # artists.each do |artist_pair|
    #   p artist_pair
    # end
  end
end
