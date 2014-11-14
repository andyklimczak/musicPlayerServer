= music player readme (Group 1, champion 9:10-10:05 mwf)

This is the accompanying server that works along with our android app. The server is hosted on heroku. The server stores the consistant data of the user's top played songs and artists. This information is on the profile page.

url: musicplayerserver.herokuapp.com

GET
/check
makes sure the server it awake
returns the current server time

POST
/log_user
either creates a user if a user with the facebook id doesn't exist
or returns the user with that facebook_id
params = email, name, facebook_id
returns the user

POST
/update_session
finds the user by facebook id, then updates the user's artist and song hash to be the current top songs and artists
params = facebook_id, songs: {title1: count1, title2:count, ... }, artists : {artist1: artistcount1, artist2: artistcount2, ...}

