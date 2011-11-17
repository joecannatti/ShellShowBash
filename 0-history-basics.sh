

#UNIX philosophy
#Do one thing and do it well (Doug McIlroy)
#Everything is a file...........Linus say "stream of bytes" is more accurate

#Brief History of UNIX leading up to Linux, and FreeBSD

#most UNIX tools have a canonical GNU/Linux version and BSD version

#Bourne
#Again
#SHell

#Written by Brian Fox for GNU as a replacement for the BourneShell (sh) in 1989
#The BourneShell was the original UNIX shell developed in 1969
#Took many advanced featurns for the KornShell (ksh) and CShell (csh) and added them the the BourneSh
#examples - history, tab completion, 

#Works in through piping output in streams from process to process

#find all ruby files; pull out the lines that contain instance eval; limit to 10 per file; strip leading whitespace; sort alphabetically
find . -name \*.rb | while read line; do grep instance_eval $line | head -10 ; done | sed "s/^[ ]*//" | sort

#Well get to more of how this works later

#Very powerful way of expressing a program

#It's sort of like functional programming, not quite.
#Thats why it works so well for one liners. 

#BASH is the default shell in the GNU system (All Linux Distros), and OS X

#OpenSolaris defaults to ksh, which is compatable with the BourneShell
#But FreeBSD defaults to tcsh shell, which is not

#When in doubt and cross enviornment compatiblity is needed stick to sh features.
#which means avoid brace expansion
ls *.{jpg,jpeg,png}
#non subshell math operations
$((4 + 6))
#and redirecting stdin stdout together
ls -al &> /dev/null

# SheBang (#!) your files to the most common shell type that will support your script
#.......If you are on Linux or OS X you will have BASH though. So I wouldn't worry too much about this.

#zsh is also becoming popular for developers.
#Adds some featurns around globbing, completion, and customization
#When using someone elses machine with ZSH everything I do works as it does in BASH, but I don't think it is strictly compatable with BASH
#It is compatible with sh


#Startup Files (In Order)
#  /etc/profile
#  ~/.bash_profile  can also be named (~/.profile and .bash_login)
#  ~/.bashrc

#Basic commands (I'm assuming most people know all of these)
ls
mv
cp
cd
rm
mkdir
chmod
head
tail
