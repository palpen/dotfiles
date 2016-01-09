## commands ##

#put mac to sleep
alias sleep='pmset sleepnow'

#open bash profile
alias bp='sbl ~/.bashrc.d/original.sh;echo “Opening bash profile”'
alias bpd='cd ~/Desktop/Dropbox/misc/dotfiles/.bashrc.d'

# directory navigation
alias cpp='pwd | pbcopy;echo “copied path:”;pwd'
alias cdesk='cd /Users/palermospenano/Desktop;pwd'
alias db='cd /Users/palermospenano/Desktop/Dropbox;pwd'
alias c.='cd ..'
alias c..='cd ../..'
alias c...='cd ../../..'
alias ocf='open .'

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
alias lgr='echo "Listing your github repositories";curl https://api.github.com/users/palpen/repos | grep -o "git@[^\"]*"'  # list github repositories

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

#################
# misc commands #
#################

# sublime FILENAME  (open a file in sublime text: https://gist.github.com/artero/1236170)
# source ~/.bashrc.d/original.sh (reloads bash profiles)
