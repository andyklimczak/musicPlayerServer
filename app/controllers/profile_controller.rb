class ProfileController < ApplicationController
  #post update_session
  #params: id, song : {title : count}, artist : { name : count }
  #app.post('update_session', facebook_id: "123", songs: {songname1:"count1", songname2:"count2"}, artists: {artist1:"artist1count", artist2:"artist2count"})
  def update_session
    p "i am here"
    songs = JSON.parse params[:songs]
    artists = JSON.parse params[:artists]
    #user = User.where(facebook_id: params[:facebook_id]).first
    songs do |song_pair|
      p song
    end
    arists do |artist_pair|
      p artist
    end
  end
end
