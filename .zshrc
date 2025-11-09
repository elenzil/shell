########################################
# path

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


########################################
# misc

alias editZshrc='${EDIT} ${SCRIPT_PATH}'


