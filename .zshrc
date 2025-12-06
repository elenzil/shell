########################################
# How to use this file.
#
# 1. clone the repository into some long-lived folder.
#    personally I use ${HOME}/git/<organization>/<repository>
#
# 2. edit your ${HOME}/.zshrc file, and append this to it:
#    source "<PATH_TO_REPOSITORY>"
#
#    for example, i have the following in the bottom of ~/.zshrc:
#    source ${HOME}/git/elenzil/shell/.zshrc
#    (actually, that's the entirety of my .zshrc)
#

########################################
# functions

sourceIfExists() {
    if [ -f "${1}" ]; then
        source "${1}"
    fi
}


########################################
# path

# add ${HOME}/bin/ to the path, if it exists.
if [ -d ${HOME}/bin ]; then
    PATH=${PATH}:${HOME}/bin
fi

########################################
# self-referential stuff

# path to this very script file
SCRIPT_PATH=${0:a}

# editor. maybe this is too much, idk.
EDIT='subl'

########################################
# Prompt
export PS1='%2d %# '

########################################
# regular aliases

alias ll='ls -lart'
alias stripstyle='pbpaste | pbcopy'

########################################
# history
# todo
alias h="history -50"
alias hh="history -500"
alias hhh="history 0"

# Maximum lines kept in memory
export HISTSIZE=10000
# Maximum lines saved to $HISTFILE
export SAVEHIST=10000


########################################
# misc

# edit THIS VERY FILE !
alias editZshrc='${EDIT} ${SCRIPT_PATH}'


########################################
# setting up a new computer

_setupSection() {
	_setupSectionDelimiter="--------------------------------------\n"
    printf "\n${_setupSectionDelimiter}"
    printf "$1\n"
    printf "${_setupSectionDelimiter}"
}

setupNewComputer() {

    # history-based suggestions
    _setupSection "Installing autosuggestions"
    brew install zsh-autosuggestions

    # enable touch-id for sudo
    _setupSection "DO THIS YOURSELF:"
    SUDOPAM="/etc/pam.d/sudo"
    printf "Insert the following into the top of ${SUDOPAM}:\n"
    printf "auth       sufficient     pam_tid.so\n"
}


########################################
# Config for this shell session

# enable history-based suggestions
sourceIfExists "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

