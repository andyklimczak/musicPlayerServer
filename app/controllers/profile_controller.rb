class ProfileController < ApplicationController
  #post update_session
  #params: id, song : {title : count}, artist : { name : count }
  #app.post('update_session', facebook_id: "123", songs: {songname1:"count1", songname2:"count2"}, artists: {artist1:"artist1count", artist2:"artist2count"})
  def update_session
    p update_session
    user = User.where(facebook_id: params[:facebook_id]).first
    songs_hash = JSON.parse params[:songs]
    artists_hash = JSON.parse params[:artists]
    p songs_hash
    p artists_hash
    user.update(songs_hash: songs_hash.to_s)
    user.update(artists_hash: artists_hash.to_s)
    p songs_hash.to_s
    p songs.artist_hash.to_s
  end
end
