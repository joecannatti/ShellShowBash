#control structures and language constucts

#variables

#variables are global to the enviornment

#there can be no space in the assignment statement
test=5
test = 5 #invalid

#variables are deferenced with the $ operator
echo $test

#optional static typing sort of...not really
declare -i test
test=5
echo $test
test="aoeu"
echo $test

#contants
readonly ponies=5

#arrays.....sigh
#bash has arrays
#they might make you cry

#they are unbounded 
ponies[9]=2
echo ${ponies[9]}

#literals
turtle=(1 2 3 4 5 6)
echo ${turtle[2]}

#array operations
echo ${turtle[*]}

#array length
echo ${#turtle[@]}

#beyond that you sort of have to manage arrays yourself

#example
function kk {
  echo ""
  echo ""
  echo ""
  echo "The epubs on your desktop are:"
  cd ~/Desktop;

  index=0
  FILES=()

  for i in $(find . -name \*epub); do
    unset done
    if [ -x $i ]; then
      done="(already converted)"
    fi

    index=xpr $index + 1
    echo $index")" $i $done;
    FILES[$index]=$i
  done

  echo ""
  echo "Which file would you like to convert?"
  read count

  file_to_convert=${FILES[count]}
  chmod -v +x $file_to_convert

  if [ -x "$file_to_convert" ]; then
    echo "S'ALL GOOD!!"
  fi

  echo ""
  echo ""
}

#comparisons and if statements

if [ "ponies" = "ponies" ]; then echo good; fi

#you need the whitespace before/after the open close square braces
#the bash grammer is pretty light

#HERE's a GOTCHA
gorilla=aoeu
soup=ueoa
if [ $gorilla == $soup ]; then echo okay; fi
soup=aoeu
if [ $gorilla == $soup ]; then echo okay; fi
unset gorilla
if [ $gorilla == $soup ]; then echo okay; fi #this will crash
if [ "$gorilla" == "$soup" ]; then echo okay; fi #this will work

#variables are expanded not referenced

#if a file exists and is of anytime (FILE,DIR,BLOCK,CHAR)
if [ -a 0-history-basics.sh ]; then echo panda; fi
#if a file exists and is regular file
if [ -f 0-history-basics.sh ]; then echo panda; fi
#if a dir exist
if [ -d .git ]; then echo panda; fi

#There are many many more

#AND operator is -a
if [ -f 0-history-basics.sh -a -f 1-grep.sh ]; then echo aoeu; fi
#OR is -o
if [ -f 0-history-basics-aoeu.sh -o -f 1-grep.sh ]; then echo aoeu; fi

#$? is the return value of the last process
#very useful in automation scripts
echo $?

if [ $? -ne 0 ]; then echo "failed!"; fi


#CAREFUL! if there are spaces in the file names this will all kinds of fail
#this is better
find . -name \*.hs | while read line; do echo $line; done

#that brings up to while loops and read
while true; do echo pony; done

#read input from stdin
read variable_name

#combine the two to get a loop that processes echo line of stdin.
process_that_cranks_out_lines | while read line; do echo $line; done

#script syntax
if [ -a 0-history-basics.sh ]; then 
  echo aoeu
fi


