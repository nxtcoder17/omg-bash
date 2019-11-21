#! /bin/bash

## Check if the sourcing is coming from the configured bash shell
## then, THEME variable would be set
if [[ -z $THEME ]]
then
    echo "You don't have the attached color generator script in your $HOME"
    exit 1
fi
		
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
#       UNICODE GLYMPHS
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-

DIR=$(echo -e $'\uf07c')            #  : f07c
ARROW=$(echo -e $'\uf054')          #  : f054
HAND_RIGHT=$(echo -e $'\uf0a4')     #  : f0a4
FLAME=$(echo -e $'\uf490')          #  : f490

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
#       PROMPT COMPONENTS
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-

FLAG="\[${BOLD}\]\[${IND_RED}\]${ARROW}"        # Indian Red  
FLAG+="\[${WHITE}\]${ARROW}"                    # Indian White
FLAG+="\[${IND_GREEN}\]${ARROW}\[$RESET\]"      # Indian Green

DIR_PATH="\[${BOLD}${PINK}\]${DIR}"             # DIR - icon 
DIR_PATH+="  \w\[$RESET\]"                      # $(PWD)

PROMPT_TIME="\[${BOLD}${IND_RED}\] ${HAND_RIGHT} \[${BOLD}${GREY}\] \$(date +%H:%M:%S)\[$RESET\]"
FLAME="\[${RESET}${BOLD}${YELLOW}\] ${FLAME} \[$RESET\]"
USER_NAME="\[${BOLD}\]\[${CYAN}\]\u\[$RESET\]"

### Requires git_branch function to be sourced in the shell prior to sourcing this file
### WARNING: Load the Theme File at the very end of your bashrc
GIT_BRANCH="\[${BOLD}${IND_RED}\] ${HAND_RIGHT} \[${BOLD}${GREY}\] \$(git_branch)\[$RESET\]"

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
#       PROMPT 
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
PS1=" $DIR_PATH"
PS1+=" $PROMPT_TIME"
# PS1+=" $GIT_BRANCH "
PS1+="\n"
PS1+="$FLAME"
PS1+=" $USER_NAME"
PS1+=" $FLAG "
# export PS1=" $DIR_PATH $PROMPT_TIME\n${FLAME} $USER_NAME $FLAG "
export PS1
