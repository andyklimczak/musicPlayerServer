class ProfileController < ApplicationController
  #post update_session
  #params: id, song : {title : count}, artist : { name : count }
  #app.post('update_session', facebook_id: "123", songs: {songname1:"count1", songname2:"count2"}, artists: {artist1:"artist1count", artist2:"artist2count"})
  def update_session
    p "i am here"
    # songs = JSON.parse params[:songs]
    # artists = JSON.parse params[:artists]
    # user = User.where(facebook_id: params[:facebook_id]).first
    test = JSON.parse params
    p test
    p test.class.name
    # songs.each do |song_pair|
    #   p song_pair

    # end
    # artists.each do |artist_pair|
    #   p artist_pair
    # end
  end
end
