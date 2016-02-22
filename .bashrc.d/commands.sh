## commands ##

#put mac to sleep
alias sleep='pmset sleepnow'

#open bash profile
alias bp='sbl ~/Desktop/Dropbox/misc/dotfiles/.bashrc.d/commands.sh;echo “Opening bash profile”'
alias bpd='cd ~/Desktop/Dropbox/misc/dotfiles/.bashrc.d'

# directory navigation + other
alias cpp='pwd | pbcopy;echo “copied path:”;pwd'
alias cdesk='cd /Users/palermospenano/Desktop;pwd'
alias db='cd /Users/palermospenano/Desktop/Dropbox;pwd'
alias c.='cd ..'
alias c..='cd ../..'
alias c...='cd ../../..'
alias ocf='open .'
alias c='clear'

# User settings in Sublime text (contains snippets)
alias stset='cd /Users/palermospenano/Library/Application\ Support/Sublime\ Text\ 3/Packages/User;pwd'

# turn off wifi
alias woff='networksetup -setairportpower en0 off;echo "Turning wifi off"'
alias won='networksetup -setairportpower en0 on;echo "Turning wifi on"'

# activates new aliases in current terminal
alias src='source ~/.bashrc; echo "New aliasses now activated!"'

# list current directory in detail---must install GNU Command Line Tools
# alias la='gls --color -altX'
alias la='gls --color -lXa | awk "{print \$6, \$7, \$8, \$9}" | column -t'
alias l='gls --color -tltX | awk "{print \$6, \$7, \$8, \$9}" | column -t'
alias ld='echo "$(tput setaf 1)Folders in directory:$(tput setaf 4)";ls -d */ | cut -f1 -d'/''  # list directories in folders

# danger alert
alias rm='rm -i'
alias mv='mv -i'

# eject external hardrive
alias ejd='osascript -e "tell application \"Finder\" to eject (every disk whose ejectable is true)";echo "External drives ejected! Wait 5 seconds before removing USB"'

# git
alias ga='git add '
alias gs='git status'
alias gss='git status -s'  # short format
alias gc='git commit -m'
alias gull='git pull origin'
alias gush='git push origin'
alias gco='git checkout'
alias glg='git lg'
alias gcl='git clone'
alias lgr='echo "Listing your github repositories";curl https://api.github.com/users/palpen/repos | grep -o "git@[^\"]*"'  # list github repositories
alias lgrh='echo "List GitHub clone url";curl https://api.github.com/users/palpen/repos | grep  -o "https://github.com/[^\"]*\.git"'

# csvkit --- TO ADD
#csvlook, csvlook | grep, csvlook | head, csvcut,
alias cl='csvlook '

# open in excel: usage "$exl my_data.csv"
alias exl='open -a "Microsoft Excel"'

# Stata
alias pado='cd "/Users/palermospenano/Library/Application Support/Stata/ado/personal";echo "Directory containing personal ado files"'
# open stata and cd into current directory
alias tstata='/Applications/Stata/StataMP.app/Contents/MacOS/stata-mp'  # stata in terminal
alias stata='echo "Opening Stata for directory: "; pwd; /Applications/Stata/StataMP.app/Contents/MacOS/StataMP &'  # stata GUI

# sublime text shortcuts
alias sbl='open -a "/Applications/Sublime Text.app" '
alias subl='open -a "/Applications/Sublime Text.app" '
alias sub='open -a "/Applications/Sublime Text.app" '

# todo.txt: reference http://dangerisgo.com/blog/2012/09/20/setup-todo-dot-txt-cli-on-osx-with-homebrew-and-dropbox/
# alias t='/Users/palermospenano/Desktop/Dropbox/todo/todo.sh -d /Users/palermospenano/Desktop/Dropbox/todo/todo.cfg'
alias t='/Users/palermospenano/Desktop/Dropbox/todo/todo.sh'
alias tt='open -a safari http://lifehacker.com/5155450/todotxt-cli-manages-your-tasks-from-the-command-line'


########
# misc #
########

# block out distracting websites for fixed duration (to block an hour execute `work 1` in command line)
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
	defaults write org.eyebeam.SelfControl HostBlacklist -array "www.andrewgelman.com" "news.ycombinator.com" "www.quora.com" "www.marginalrevolution.com" "www.nytimes.com" "www.bleacherreport.com" "www.amazon.ca" "www.amazon.com" "www.youtube.com" "www.nba.com"
	sudo /Applications/SelfControl.app/Contents/MacOS/org.eyebeam.SelfControl $(id -u $(whoami)) --install
}

# set number of minutes to block out distracting sites
workc() {
	echo "Blocking out distracting websites for $1 minutes"
	defaults read org.eyebeam.SelfControl;defaults write org.eyebeam.SelfControl BlockDuration -int $1
	defaults write org.eyebeam.SelfControl HostBlacklist -array "www.andrewgelman.com" "news.ycombinator.com" "www.quora.com" "www.marginalrevolution.com" "www.nytimes.com" "www.bleacherreport.com" "www.amazon.ca" "www.amazon.com" "www.youtube.com" "www.nba.com"
	sudo /Applications/SelfControl.app/Contents/MacOS/org.eyebeam.SelfControl $(id -u $(whoami)) --install
}


##################
# Misc Functions #
##################
# copy a filename to clipboard
copyfilename() {
    printf '%s\n' * | grep $1 | pbcopy
    echo "Copied filename of: $1"
}
alias cf='copyfilename '

# Set Terminal window name
set_term_title(){
   echo -en "\033]0;$1\a"
}
alias tn='set_term_title '

#########
# notes #
#########

# sublime FILENAME  (open a file in sublime text: https://gist.github.com/artero/1236170)
# source ~/.bashrc.d/original.sh (reloads bash profiles)
# remove alias: unalias ALIASNAME
