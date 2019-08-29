alias ll='ls -hlatr'
alias vim='/usr/local/Cellar/macvim/8.1-155/MacVim.app/Contents/MacOS/Vim'
alias cleangit='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
alias localserver='python -m SimpleHTTPServer 8000'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

export CLICOLOR=1
export CLICOLOR_FORCE=1

export VOLTA_HOME="$HOME/.volta"
[ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

export PATH="$VOLTA_HOME/bin:$PATH"

