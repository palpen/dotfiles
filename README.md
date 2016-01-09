
These are my dotfiles containing my [aliases in Bash](https://github.com/palpen/dotfiles/blob/master/.bashrc.d/commands.sh) and customizations to my command prompt. I borrowed its [structure](https://github.com/jacobtomlinson/dotfiles) and the [command prompt theme](https://github.com/jacobtomlinson/terminal-piperita) from [jacobtomlinson](https://github.com/jacobtomlinson)

To use this, download the repository to Dropbox then create a symbolic link of .bash_profile, .bashrc, and .bashrc.d to the home directory, $HOME. The symbolic links to the home directory are created by executing the following in Terminal:

    cd ~
    ln -s ~/Desktop/Dropbox/dotfiles/.bash_profile
    ln -s ~/Desktop/Dropbox/dotfiles/.bashrc
    ln -s ~/Desktop/Dropbox/dotfiles/.bashrc.d

(note: I moved my Dropbox folder to the Desktop)