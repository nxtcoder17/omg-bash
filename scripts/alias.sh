#! /bin/bash

#########################################
### Alias Files
#########################################

# ls:
#     + use colors by default
#     + -h: Human Readable Sizes
#     + --group-directories-first: Group Directories First
#     + -p: Append / at the end of directory names
#     
alias ls='ls --color=auto -h --group-directories-first -p'

# grep
alias grep='grep --color=auto'

alias ec='emacsclient -ct'
alias eg='emacsclient -cn'

# mpv play audio songs, without dispalying the Album Art
alias mpv='mpv --no-audio-display'

alias pydm='python $HOME/Workspace/projects/PyDownloader/main.py'
alias g++='g++ --std=c++11 -Wall -O2 -o sol'

### Vim Plugger
alias vimplugger='python $HOME/Workspace/projects/PyVimPlugger/vimplugger.py'

### music-dl
alias music='python $HOME/Workspace/projects/music-dl/music-dl.py'

alias vim='nvim'

alias pause='pymusic pause'
alias play='pymusic play'

alias sfbookmgr='python $HOME/Workspace/projects/Safari_Ebooks_Manager/bookmgr.py'
