HISTFILESIZE=9000

BIN="$HOME/shell/bin"

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$BIN"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export EDITOR="/usr/bin/vim"


export FIGNORE="$FIGNORE:.DS_Store"


# History
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE

alias ll='ls -lart'
alias top='top -u'
alias stripstyle='pbpaste | pbcopy'
# beautify_json is now a python file in ~/bin
# alias beautify_json='python -m json.tool'
alias beautify_hex="sed -e 's/[^a-fA-F0-9]//g' -e 's/\(..\)/\1 /g' -e 's/ $//'"
alias subl='subl -n'
alias pbfcopy='pbcopy -pboard find'
alias pbfpaste='pbpaste -pboard find'
alias slack_quote="grep -ve '^[:space]*$' | sed -e 's/^/> /'"

# 'fix' standard commands
alias nl='nl -b a'
alias grep='grep --line-buffered'
alias deviceconsolecolor='deviceconsole -c'

UNITYLOG="$HOME/Library/Logs/Unity/Editor.log"
alias gitStatusAll="ls ./ | xargs -I{} sh -c 'cd {}; echo; echo; echo IN FOLDER {}; git status; cd ..;'"
alias tailunity='tail -f "$UNITYLOG"'
alias catunity='cat "$UNITYLOG"'
alias gitdiffunity="git diff -- ':(exclude)*.unity' ':(exclude)*.prefab'"
alias gitnetwork="git log --all --graph --date-order --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# alias gitnetworkcoloralways="git -c 'color.ui=always' log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias predate="xargs -I{} sh -c 'date +\"%Y%m%d %H:%M:%s\" | tr \"\n\" \" \"; echo \"{}\"'"

alias hex_to_c="sed -e 's/[^0-9a-fA-F]//g' -e 's/\(..\)/0x\1, /g' -e 's/, $//' -e 's/^/const uint8_t bytes = [/' -e 's/$/];/'"

source "$BIN/gittools.sh"

############

fnShadow() {
	cp "$1" "$1.bak"
	convert "$1" -bordercolor white -border 1 \( +clone -background black -shadow 80x3+1+1 \) +swap -background white -layers merge +repage "$1"
}

alias imgshadow=fnShadow
alias imgopen="open -a Preview.app -f"

