
These are my dotfiles containing my [aliases in Bash](https://github.com/palpen/dotfiles/blob/master/.bashrc.d/commands.sh) and customizations to my command prompt. I borrowed its [structure](https://github.com/jacobtomlinson/dotfiles) and the [command prompt theme](https://github.com/jacobtomlinson/terminal-piperita) from [jacobtomlinson](https://github.com/jacobtomlinson)

To use this, download the repository to Dropbox then create a symbolic link of .bash_profile, .bashrc, and .bashrc.d to the home directory, $HOME. The symbolic links to the home directory are created by executing the following in Terminal:

    cd ~
    ln -s ~/Desktop/Dropbox/dotfiles/.bash_profile
    ln -s ~/Desktop/Dropbox/dotfiles/.bashrc
    ln -s ~/Desktop/Dropbox/dotfiles/.bashrc.d

(note: I moved my Dropbox folder to the Desktop)

____

#### A better way to view files on Finder from Terminal
Reference: [Will Robertson](http://willwont.blogspot.ca/2014/05/open-finder-window-from-terminal.html)

1. Create a text file with

    >\#!/bin/bash
    >osascript -e "tell application \"Finder\" to activate" \
      -e "tell application \"Finder\" to set the folder of the front window to POSIX file \"\`pwd\`\" " > /dev/null

in it. Save is as `fin` (no extension)
2. Place `fin` in the usr/local/bin directory
3. Give `fin` the proper executable permission by entering the following in terminal

    chmod +x fin

Enter `fin` in Terminal and the current directory should open in a Finder window that's already open (instead of a *new* Finder window, which is the case with `open .`).