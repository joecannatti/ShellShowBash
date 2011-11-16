
count=0; for i in $(find . -name \*.rb); do count=$(($count + $(git blame $i | grep "Anthony Broad" | wc -l))); echo $count; done; echo "ABC wrote $count lines of code";

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



