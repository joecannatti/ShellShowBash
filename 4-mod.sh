#adding things to you profile can be very useful

#can be done on the fly
echo "alias rs='bundle exec rails s'" >> ~/.profile


#functions

function mod { 
 vi -o $(git status | grep modified | awk '{print $3}')
}

#arguments accessable via $1, $2

#you can use type to figure out what's going on if it's not clear

type mod

#show my .profile



