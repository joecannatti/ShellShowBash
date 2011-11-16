
#this cleans up the display
curl "http://twitter.com/search.json?q=joecannatti"
curl "http://twitter.com/search.json?q=joecannatti" 2> /dev/null
curl "http://twitter.com/search.json?q=joecannatti" 2> /dev/null | vi -
curl "http://twitter.com/search.json?q=joecannatti" 2> /dev/null | egrep -o "text\":\"[^\"]*\"" 
curl "http://twitter.com/search.json?q=joecannatti" 2> /dev/null | egrep -o "text\":\"[^\"]*\"" | sed "s/.*\"://"


#egrep lets you use full regexs instead op posix only
#grep -o returs only the match

