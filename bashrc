###############################################
#############   My Bash Setup   ###############
###############################################

#! /bin/bash

OMG_BASH_DIR="/home/balor/Workspace/projects/omg-bash"

THEME="dark_knight"
# THEME="powerline"

resolver() {
  local file="$OMG_BASH_DIR/$1"
		# echo -n $file
		if ([[ -f "$file" ]] || [[ -L "$file" ]])
		then
				source "$file"
		else
				echo "[WARNING]: $1 not found in $OMG_BASH_DIR"
		fi
}

resolver "scripts/env.sh"
resolver "scripts/functions.sh"
resolver "scripts/alias.sh"

if ([[ $COLORTERM == "truecolor" ]] || [[ $COLORTERM == "24bit" ]])
then
  resolver "scripts/pretty_colors_24bit.sh"
else
  resolver "scripts/pretty_colors_256.sh"
fi

resolver "prompts/$THEME.sh"
