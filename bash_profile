export WORKON_HOME=~/envs
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	source $(brew --prefix)/etc/bash_completion
fi
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
# source /usr/local/etc/bash_completion.d/go-completion.bash
export PATH=~/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH:/usr/local/sbin
source /usr/local/bin/virtualenvwrapper.sh
#export PATH="$PATH:~/git/git-achievements"
#alias git="git-achievements"
alias pg_up='pg_ctl -D /usr/local/var/postgres start -l /usr/local/var/postgres/server.log'
alias pg_down='pg_ctl -D /usr/local/var/postgres stop'
alias vim='/usr/local/Cellar/macvim/8.1-155/MacVim.app/Contents/MacOS/Vim'
alias cleanpyc='find . -type f -name "*.pyc" -delete'
alias cleanorig='find . -type f -name "*.orig" -delete'
alias pms="python manage.py runserver 0.0.0.0:8000"
alias debugshell="python manage.py debugsqlshell"
alias uuidhex='python -c '\''import uuid;print(uuid.uuid4().hex)'\'''
alias cleangit='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
alias localserver='python -m SimpleHTTPServer 8000'

export GIT_MERGE_AUTOEDIT=no
export PYTHONDONTWRITEBYTECODE=1
export GOPATH=$HOME/src/gocode
export PATH=$PATH:$GOPATH/bin
#eval "$(ssh-agent -s)"
export PATH="/usr/local/opt/curl/bin:$PATH"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
source ~/.bashrc

export VOLTA_HOME="$HOME/.volta"
[ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

export PATH="$VOLTA_HOME/bin:$PATH"
