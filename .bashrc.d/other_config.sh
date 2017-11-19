# PATHs and other shell configurations

# added by Anaconda 2.1.0 installer
# export PATH="/Users/palermospenano/anaconda/bin:$PATH"
# export PATH="/Users/palermospenano/anaconda2/bin:$PATH"

# anaconda version 3 (with python 3) path
export PATH="/Users/palermospenano/anaconda3/bin:$PATH"

# Add stata to shell path
export PATH=$PATH:/Users/palermospenano/Applications/Stata/StataMP.app/Contents/MacOS

# Add lyx to shell path (note ../../ at beginning)
export PATH=$PATH:"../../Applications/LyX.app/Contents/MacOS"

# enable tab cycling to autocomplete
bind TAB:menu-complete

# Ruby jekyll mac os x el capitan --- all that stuff
export PATH=/usr/local/bin:$PATH

# allows pandoc to work in sublime text
export PATH=$PATH:Library/TeX/texbin

# mysql
export PATH=$PATH:/usr/local/mysql/bin

# virtual environment set up
# reference: http://mkelsey.com/2013/04/30/how-i-setup-virtualenv-and-virtualenvwrapper-on-my-mac/

export WORKON_HOME=$HOME/.virtualenvs  # ensure all new environments are isolated from the site-packages directory

export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'  # use the same directory for virtualenvs as virtualenvwrapper

export PIP_VIRTUALENV_BASE=$WORKON_HOM  # makes pip detect an active virtualenv and install to it

export PIP_RESPECT_VIRTUALENV=true
if [[ -r /Users/palermospenano/anaconda3/bin/virtualenvwrapper.sh ]]; then
    source /Users/palermospenano/anaconda3/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi