# DON'T MODIFY THIS FILE
# Place new config in a separate file within ~/.bashrc.d/

# Source .bashrc if it exists (which will source everything in ~/.bashrc.d/)
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
# added by Anaconda2 2.5.0 installer OLD ANACONDA
# export PATH="/Users/palermospenano/anaconda2/bin:$PATH"

# added by Anaconda3 4.4.0 installer
export PATH="/Users/palermospenano/anaconda3/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/palermospenano/Desktop/google-cloud-sdk/path.bash.inc' ]; then source '/Users/palermospenano/Desktop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/palermospenano/Desktop/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/palermospenano/Desktop/google-cloud-sdk/completion.bash.inc'; fi
