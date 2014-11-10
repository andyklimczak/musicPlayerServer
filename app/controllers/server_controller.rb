class ServerController < ApplicationController
  #post update_session
  #params: id, song : {title : count}, artist : { name : count }
  def update_session #app.post('update_session', facebook_id: "123", songs: {title:"let it be", title:"stuff"})
    user = User.where(facebook_id: params[:facebook_id]).first
    params[:songs].each do |song|
      p song
    end
    # p params[:songs
    # p params[:artists]
  end
end
