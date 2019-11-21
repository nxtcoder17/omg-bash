#! /bin/bash

## Taken from somewhere may be from ArchWiki
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"                    # command : used to not trigger the Infinite Recursion
}

# HomeGrown
git_branch() {
		$(git branch &> /dev/null)

		# if return status of previous command is 0, then only proceed
		if [[ $? -eq 0 ]]
		then
				local git_branch=$(git branch | grep '*' | awk '{print $2}')
				echo -n $git_branch
		fi
}

pymusic () {
  if ( [ "pause" == "$1" ] || [ "play" == "$1" ] )
  then
    curl http://localhost:8000/music/pause
  fi
}

