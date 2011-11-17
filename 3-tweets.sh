
#this cleans up the display
curl "http://twitter.com/search.json?q=joecannatti"
curl "http://twitter.com/search.json?q=joecannatti" 2> /dev/null
curl "http://twitter.com/search.json?q=joecannatti" 2> /dev/null | vi -
curl "http://twitter.com/search.json?q=joecannatti" 2> /dev/null | egrep -o "text\":\"[^\"]*\"" 
curl "http://twitter.com/search.json?q=joecannatti" 2> /dev/null | egrep -o "text\":\"[^\"]*\"" | sed "s/.*\"://"

#egrep lets you use full regexs instead op posix only
#grep -o returs only the match

#redirecting stdout stderr

#this will only capture stdout
rails server > redirect_file

#this will only capture stderr 
rails server 2> redirect_file

#this will only capture both 
rails server &> redirect_file

#this is useful both for capturing data as well as throughing data away
#redirecting to /dev/null will send your stream to some secret alternate universe were pandas ride ponies on the beach

#piping only sends stdout

#To pipe stderr and stdout (I had to do this exactly once)
rails server 2>&1 | grep something

#To pipe stderr and discard stdout (Weird right?)
rails server 2>&1 > /dev/null | grep something


#To pipe stderr and write stdout to a file
rails server 2>&1 > test_file | grep something
