= music player readme (Group 1, champion 9:10-10:05 mwf)

This is the accompanying server that works along with our android app. The server is hosted on heroku. The server stores the consistant data of the user's top played songs and artists. This information is on the profile page.

url: musicplayerserver.herokuapp.com

GET
/check
makes sure the server it awake
returns "stuff"

POST
/log_user
creates the user
params = email, name, facebook_id
returns the user

POST
/set_song_for_user
give a user a song
params = facebook_id, artist, title
returns the song

POST
/get_user_artists
get all of the artists the user has listened to
params = facebook_id
returns the user's songs' artists