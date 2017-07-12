## commands ##

#put mac to sleep
alias sleep='pmset sleepnow'
alias ss='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

#open bash profile
alias bp='sbl ~/Desktop/Dropbox/misc/dotfiles/.bashrc.d/commands.sh;echo “Opening bash profile”'
alias bpw='sub /Users/palermospenano/Desktop/Dropbox/misc/dotfiles/.bashrc.d/private_work.sh; echo "Opening work aliases"'
alias bpd='cd ~/Desktop/Dropbox/misc/dotfiles/.bashrc.d'

alias bc='bc -l'  # basic calculator with math library
alias foldersz='du -hs'  # get folder size

# directory navigation + other
alias cpp='echo -n `pwd` | pbcopy;echo “copied path:”;pwd'
alias cdesk='cd /Users/palermospenano/Desktop;pwd'
alias cdx='cd /Users/palermospenano/Desktop/Dropbox;pwd'
alias c.='cd ..'
alias c..='cd ../..'
alias c...='cd ../../..'
alias c='clear'
alias c-='cd -'  # return to previous directory
alias p='pushd'
alias o='popd'
alias rfn='find . -maxdepth 1 -type f -exec stat -f "%m {}" {} \; | sort -n | tail -n 1 | cut -d '"'"' '"'"' -f 2 | pbcopy'  # copies file name of most recently added / modified file in current directory


# User settings in Sublime text (contains snippets)
alias stset='cd /Users/palermospenano/Library/Application\ Support/Sublime\ Text\ 3/Packages/User;pwd'

# turn off wifi
alias woff='networksetup -setairportpower en0 off;echo "Turning wifi off"'
alias won='networksetup -setairportpower en0 on;echo "Turning wifi on"'

# activates new aliases in current terminal
alias src='source ~/.bashrc; echo "New aliasses now activated!"'

# list current directory in detail---must install GNU Command Line Tools
# alias la='gls --color -altX'
alias l='gls --color -tltX | awk "{print \$6, \$7, \$8, \$9}" | column -t'
alias l1='gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n1'  # list the # most recent files in folder
alias l2='gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n2'
alias l3='gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n3'
alias l4='gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n4'
alias l5='gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n5'
alias l6='gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n6'
alias l7='gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n7'
alias l10='gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n10'
alias lm='gls --color -tl'  # list in order created
alias la='gls --color -lXa | awk "{print \$6, \$7, \$8, \$9}" | column -t'
alias ld='echo "$(tput setaf 1)Folders in directory:$(tput setaf 4)";ls -d */ | cut -f1 -d'/''  # list directories in folders


# danger alert
alias rm='rm -i'
alias rmd='rm -r'  # remove files from a directory recursively
alias mv='mv -i'

# eject external hardrive
alias ejd='osascript -e "tell application \"Finder\" to eject (every disk whose ejectable is true)";echo "External drives ejected! Wait 5 seconds before removing USB"'

# git
alias ga='git add '
alias gst='git status'
alias gss='git status -s'  # short format
alias gc='git commit -m'
alias gull='git pull origin'
alias gush='git push origin'
alias gco='git checkout'
alias glg='git lg'
alias gcl='git clone'
alias gro='git config --get remote.origin.url'
alias lgr='echo "Listing your github repositories";curl https://api.github.com/users/palpen/repos | grep -o "git@[^\"]*"'  # list github repositories
alias lgrh='echo "List GitHub clone url";curl https://api.github.com/users/palpen/repos | grep  -o "https://github.com/[^\"]*\.git"'

# csvkit --- TO ADD
# csvlook, csvlook | grep, csvlook | head, csvcut,
alias cl='csvlook '
alias cld='csvlook -d '  # usage: cld "|" filename.txt

# open in excel: usage "$exl my_data.csv"
alias exl='open -a "Microsoft Excel"'

# Stata
alias pado='cd "/Users/palermospenano/Library/Application Support/Stata/ado/personal";echo "Directory containing personal ado files"'
# open stata and cd into current directory
alias tstata='/Applications/Stata/StataMP.app/Contents/MacOS/stata-mp'  # stata in terminal (run dofiles in terminal: tstata do my_script.do)
alias stata='echo "Opening Stata for directory: "; pwd; /Applications/Stata/StataMP.app/Contents/MacOS/StataMP &'  # stata GUI
# open file in new instance of stata: open -n stata_data.dta

# matlab
alias matlab='/Applications/MATLAB_R2014a.app/bin/matlab -nodesktop -nosplash'  # command line matlab (can plots figures)
alias matlabp='open /Applications/MATLAB_R2014a_JVMstarter.app'  # pretty version of matlab

# ipython
alias ipn='ipython notebook'

# sublime text shortcuts
alias sbl='open -a "/Applications/Sublime Text.app" '
alias subl='open -a "/Applications/Sublime Text.app" '
alias sub='open -a "/Applications/Sublime Text.app" '

# todo.txt: reference http://dangerisgo.com/blog/2012/09/20/setup-todo-dot-txt-cli-on-osx-with-homebrew-and-dropbox/
# alias t='/Users/palermospenano/Desktop/Dropbox/todo/todo.sh -d /Users/palermospenano/Desktop/Dropbox/todo/todo.cfg'
alias t='/Users/palermospenano/Desktop/Dropbox/todo/todo.sh'
alias tt='open -a safari http://lifehacker.com/5155450/todotxt-cli-manages-your-tasks-from-the-command-line'


# vim reference using fzf (needs a text file containing vim keys)
alias vimr='cat ~/Desktop/Dropbox/misc/vim_shortcuts_ref/vim_shortcuts.txt | fzf'

# weather
alias day='curl wttr.in/toronto'

# open local host on browser and initiate a jekyll local server (used for running website locally)
alias jks='open -a Safari http://127.0.0.1:4000/;jekyll serve --watch'

# open ipython in browser
alias ipb='open -a Safari http://localhost:8888/tree'

# get current time
alias gt='date "+%H:%M"| tr -d "\n" | pbcopy'

###############
## Functions ##
###############

# cd into blog post directory
alias jblog='cd /Users/palermospenano/Desktop/github_proj/palpen_articles/_posts; echo "cd into blog post directory"'

# automatically creates the necessary boilerplate for a jekyll post, including appropriate filename
# usage: njp "This is a post title"
# source: http://ethanclevenger.com/Command-Line-Creating-Jekyll-Posts/
function njp() {
    mydate=`date +%Y-%m-%d`
    post=${1// /-}
    filename="$mydate-$post.md"
    touch "$filename"

    # note -- option below avoids invalid option error due to --- in string
    printf -- "---\nlayout: post\ntitle: $1\n---\n" > $filename
    }


# display files that matches simple search pattern with wildcard
# usage: lsf 'tfp*'; lsf 'tfp*acf*' (a wildcard must always be included in the end!)
lsf() {

  FILTER="$1"
  ls -lh ${FILTER} | awk '{print $5, $6, $7, $8,$9}'
}



## Fuzzy search in terminal using fzf (functions are from fzf wiki on GitHub)!

# fuzzy search file within current directory and open it (with the application suitable for file extension)
# usage: enter `of`, then search file, then hit enter
of() {

  local file
  file=$(fzf +m -q "$1") && open "$file"

}

ofn() {

  local file
  file=$(fzf +m -q "$1") && open -n "$file"

}

# fd - cd to selected directory
# usage: enter `fd`, then search the directory you want to be in, then enter
cdd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# cdf - cd into the directory of the selected file
# usage: enter `cdf` first, then search file name
cdf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}


## cd and ls together
function cdl() { cd "$@" && l; }


## block out dist racting websites for fixed duration (to block an hour execute `work 1` in command line)

# list of websites to block
BAD_WEBSITES=('"www.andrewgelman.com"' '"news.ycombinator.com"' '"www.quora.com"' '"www.marginalrevolution.com"' '"www.nytimes.com"' '"www.bleacherreport.com"' '"www.amazon.ca"' '"www.amazon.com"' '"www.youtube.com"' '"www.nba.com"' '"www.netflix.ca"')

# Only good for 1, 2, or 3 hours
work() {
	if [ $1 == 1 ]
	then
		WORK_TIME=60
	elif [ $1 == 2 ]
	then
		WORK_TIME=120
	elif [ $1 == 3 ]
	then
		WORK_TIME=180
	fi

	echo "Blocking out distracting websites for $1 hour(s)"
	defaults read org.eyebeam.SelfControl;defaults write org.eyebeam.SelfControl BlockDuration -int $WORK_TIME
	defaults write org.eyebeam.SelfControl HostBlacklist -array ${BAD_WEBSITES[*]}
	sudo /Applications/SelfControl.app/Contents/MacOS/org.eyebeam.SelfControl $(id -u $(whoami)) --install
}

# set number of minutes to block out distracting sites
workc() {
	echo "Blocking out distracting websites for $1 minutes"
	defaults read org.eyebeam.SelfControl;defaults write org.eyebeam.SelfControl BlockDuration -int $1
	defaults write org.eyebeam.SelfControl HostBlacklist -array ${BAD_WEBSITES[*]}
	sudo /Applications/SelfControl.app/Contents/MacOS/org.eyebeam.SelfControl $(id -u $(whoami)) --install
}


## copy a filename to clipboard
copyfilename() {
    printf '%s\n' * | grep $1 | tr -d "\n" | pbcopy
    echo "Copied filename of: $1"
}
alias cf='copyfilename '


## copy full path of file to clipboard
function fp() {
    echo -n `pwd`/"$1" | pbcopy
    echo "Copied full path of file: $1"
}

## Set Terminal/iterm window/tab name
set_term_title(){
   echo -en "\033]0;$1\a"
}
alias tn='set_term_title '


## compile lyx document
# usage: clyx <lyx document with extension> <path to destination folder>
clyx(){

    DOC_NAME="$1"
    DESTINATION_PATH="$2"

    FILENAME=$(basename "$DOC_NAME")
    FILENAME="${FILENAME%.*}"
    echo $FILENAME

    DATE=`date +%d%b%Y`

    /Applications/LyX.app/Contents/MacOS/lyx -e pdf2 "$DOC_NAME"
    mv "./$FILENAME.pdf" "$DESTINATION_PATH/${FILENAME}_${DATE}.pdf"

}

## open most recent screenshot
scsh(){

  cd /Users/palermospenano/Desktop/misc/screenshots/.

  # replace space with underscore in screen shot name
  find . -depth -name '* *' | while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr ' ' _)" ; done

  # list by date and time screen shot was taken
  gls -tl | awk "{print \$6, \$7, \$8, \$9}" | column -t | head -n10

}


# append the date when file was created at end of the filename (txt file only)
# usage: fndate file.txt
fndate(){

  DOC_NAME="$1"

  FILENAME=$(basename "$DOC_NAME")

  # get file extension
  extension="${FILENAME#*.}"

  # get basename of file (no extensions)
  FILENAME="${FILENAME%.*}"

  D=$(stat -nf'%B' $DOC_NAME)  # get date in seconds since epoch date
  DF=$(date -r $D '+%Y-%m-%d')  # get date in years, month, day

  echo "${DOC_NAME} was created on ${DF}"

  # mv $DOC_NAME "${FILENAME}-${DF}.${extension}"

}



#########
# notes #
#########

# sublime FILENAME  (open a file in sublime text: https://gist.github.com/artero/1236170)
# source ~/.bashrc.d/original.sh (reloads bash profiles)
# remove alias: unalias ALIASNAME
