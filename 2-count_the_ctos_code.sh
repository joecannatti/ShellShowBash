
count=0; for i in $(find . -name \*.rb); do count=$(($count + $(git blame $i | grep "Anthony Broad" | wc -l))); echo $count; done; echo "ABC wrote $count lines of code";

#for loop iterates a array
for i in {0..7}; do echo $i; done

#build a string of a certain length. Useful for testing
for i in {0..255}; do echo -n x; done
#on mac copy the string so you can CTRL-V it somewhere
for i in {0..255}; do echo -n x; done | pbcopy

#it will loop a stream split on spaces
for i in $(find . -name \*.hs); do echo i; done


#if I were to put it in a script
count=0; 
for i in $(find . -name \*.rb); do 
  count=$(($count + $(git blame $i | grep "Anthony Broad" | wc -l))); 
  echo $count; 
done; 
echo "ABC wrote $count lines of code";

#math in bash will make you unhappy
#no floating point
echo `expr 6 + 7`

#I don't use the backticks because of GNU screen



