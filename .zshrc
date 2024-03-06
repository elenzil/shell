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
# regular aliases

alias ll='ls -lart'
alias stripstyle='pbpaste | pbcopy'


########################################
# history
# todo


########################################
# misc

alias editZshrc='${EDIT} ${SCRIPT_PATH}'


