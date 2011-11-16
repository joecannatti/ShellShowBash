# The three tools I use most to find something in the source are

 1. grep (sometimes ack)
 2. sed (very powerful, we will use a small subset here)
 3. find

# grep
#----------------------j
grep [options] PATTERN [FILE...]

#if no FILE is given grep will read form stdin
#this allows grep to be piped to from other unix commands
 
tail -100 log/development.log | grep -i "SELECT \*"
tail -f log/development.log | grep -i "SELECT \*"

#there's alot more you can do with that, but here I'm focusing on search the source dir

#given a file, grep searches that file
grep render app/controllers/person_controller.rb

#the -r option causes grep to search all files recursively from a given dir
grep -r render app/controllers

#in my .bashrc I have
alias grep='grep --color'

#the -l option will give you only the file names
grep -rl render app/controllers

#the -h option removes the filename
grep -rh render app/controllers


#for this presentation, I wanted to know what the most used before filter was so my examples would return results

#rank the most used before filters
  628  START_HERERERERERERER
  629  grep -ri before_filter app/controllers/
  630  grep -rih before_filter app/controllers/
  631  grep -rih before_filter app/controllers/ | awk '{print $1}'
  632  grep -rih before_filter app/controllers/ | awk '{print $2}'
  633  grep -rih before_filter app/controllers/ | awk '{print $2}' | sort |
  634  grep -rih before_filter app/controllers/ | awk '{print $2}' | sort
  635  grep -rih before_filter app/controllers/ | awk '{print $2}' | sort | uniq -c
  636  grep -rih before_filter app/controllers/ | awk '{print $2}' | sort | uniq -c | sort
  637  grep -rih before_filter app/controllers/ | awk '{print $2}' | sort | uniq -c | sort | tail -r
  638  grep -rih before_filter app/controllers/ | awk '{print $2}' | uniq -c | sort | tail -r
  639  grep -rih before_filter app/controllers/ | awk '{print $2}' | uniq -c | sort | tail -r | head -5
  640  grep -rih before_filter app/controllers/ | awk '{print $2}' | uniq -c | sort | tail -r | tail -5
  641  grep -rih before_filter app/controllers/ | awk '{print $2}' | sort | uniq -c | sort | tail -r
  642  grep -rih before_filter app/controllers/ | awk '{print $2}' | sort | uniq -c | sort | tail -r | head -10
  643  history | sed -n '/START/,$ p'

#how'd I get that history :)
history | sed -n '/START/,$ p'


#to include whitespace you'll need to double quote your query string
grep -ri "before_filter :find_project" app/controllers/
grep -ril "before_filter :find_project" app/controllers/

#now I need to find something to search those files for that might look useful to the audience
#open all files one at a time in vi
vi $(!!)

#how about default_search_scope
  655  START2
  656  grep -ril "before_filter :find_project" app/controllers/
  657  grep -ril "before_filter :find_project" app/controllers/ | while read line; do echo $i; done
  658  grep -ril "before_filter :find_project" app/controllers/ | while read line; do echo $line; done
  659  grep -ril "before_filter :find_project" app/controllers/ | while read line; do grep default_search_scope $line; done
  660  grep -ril "before_filter :find_project" app/controllers/ | while read line; do grep -l default_search_scope $line; done
  661  history | sed "/START2/,$ p"
  662  history | sed -n "/START2/,$ p"

#return a table from schema.rb
  672  h
  673  sed -n "/table \"people\"/,/^ *end/ p" db/schema.rb
  674  cd -

#find all files ending in .orig This is needed after some merges...turns out
find . -name \*orig

#find all files ending in .rb
find . -name \*rb 

#find all files ending in .rb modified in the last day and copy them to a test file if they contain 'render'
find . -name \*rb -mtime 1 | while read line; do if grep -q render $line; then cp $line ~/Desktop; fi; done;
man find
#SO MANY OPTIONS



