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


alias l='ls -alG'
alias tree='tree -C'
alias be='bundle exec'
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias h='cd ~/Sites/within3/big_red'
alias hh='mysql -u root within3_development'
alias ling='ps aux | grep ling | grep -v Chrome | grep -v grep'
alias ru='rspec spec/units'
alias s='bundle exec rspec spec'
alias c='bundle exec cucumber'
alias ca='bundle exec cucumber acceptance --require acceptance'
alias wip='cucumber acceptance --tags @jc_wip --require acceptance'
alias rt='ru;s;c;ca'
alias db='bundle exec rake w3:db:setup;bundle exec rake w3:db:load_channels'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
#prompt
RED="\[\033[1;31m\]"
YELLOW="\[\033[1;33m\]"
GREEN="\[\033[1;32m\]"
NOCOLOR="\[\033[1;0m\]"

function schema {
  sed -n "/table \"$1\"/,/^ *end/ p" db/schema.rb
}

function parse_git_branch {
  ref="$(git branch 2> /dev/null | sed -n "/*/ p" | awk '{ print $2 }')"
  if [ -n "$ref" ]; then
    echo "("${ref#refs/heads/}")"
  fi  
}
PS1="$YELLOW[\@] $RED\w $GREEN\$(parse_git_branch)$RED$ $NOCOLOR"
PATH=$PATH:/Users/joecannatti/scripts
export PATH

function mod {
  vi -o $(git status | grep modified | awk '{print $3}')
}

function lmod {
  git show | grep diff | awk '{print $4}' | sed "s/^b\///"
}

function prr {
  bundle exec rake routes | fgrep :action | \
  \
  awk '{
          method="";
          for(i=1;i<=NF;i++){
            if ($i ~ /^\//){
              example_url=$i;
            }
            else if($i ~ /[GET|PUT|POST|DELETE]/){
              method=$i;
            }
            else if($i ~ /:action/){
              first_index=index($i,"\"")+1;
              action=substr($i,first_index,length($i)-first_index-1);
            }
            else if($i ~ /:controller/){
              first_index=index($i,"\"")+1;
              controller=substr($i,first_index,length($i)-first_index-1);
            }
          }
          if ($1 != example_url && $1 != method){
            name=$1;
          }
         
          print ""
          print "  " method;
          print "  " name;
          print "  " example_url;
          print "  ACTION: " action;
          print "  CONTROLLER: " controller;
       }'
}
alias sed='gsed'
alias awk='gawk'

function ec2ssh {
  ssh build@$1 -i ~/.ssh/w3-default-key-pair.pem 
}

function box() { t="$1xxxx";c=${2:-=}; echo ${t//?/$c}; echo "$c $1 $c"; echo ${t//?/$c}; } 

##
# Your previous /Users/joecannatti/.profile file was backed up as /Users/joecannatti/.profile.macports-saved_2011-08-22_at_14:28:01
##

# MacPorts Installer addition on 2011-08-22_at_14:28:01: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/joecannatti/.profile file was backed up as /Users/joecannatti/.profile.macports-saved_2011-08-22_at_14:31:26
##

# MacPorts Installer addition on 2011-08-22_at_14:31:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$PATH:/Users/joecannatti/Code/star/rakudo-star-2011.07/install/bin
alias cs="RAILS_ENV=cucumber bundle exec rails s"
alias ack='ack --noyaml'
alias cheat='vi ~/Sites/within3/within3_setup/CHEATSHEET'
alias ss='start_startling.sh'
alias grep='grep --color'
. byobu-launch

