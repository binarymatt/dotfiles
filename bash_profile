source ~/.bashrc
export WORKON_HOME=~/envs
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	source $(brew --prefix)/etc/bash_completion
fi
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/scala
# source /usr/local/etc/bash_completion.d/go-completion.bash
export PATH=/usr/local/bin:/usr/local/share/npm/bin:$PATH:~/bin:/usr/local/sbin
source /usr/local/bin/virtualenvwrapper.sh
#export PATH="$PATH:~/git/git-achievements"
#alias git="git-achievements"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
alias pg_up='pg_ctl -D /usr/local/var/postgres start -l /usr/local/var/postgres/server.log'
alias pg_down='pg_ctl -D /usr/local/var/postgres stop'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias cleanpyc='find . -type f -name "*.pyc" -delete'
alias cleanorig='find . -type f -name "*.orig" -delete'
alias pms="python manage.py runserver 0.0.0.0:8000"
alias debugshell="python manage.py debugsqlshell"
alias git=hub
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="~/node_modules/.bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

### Added by the Heroku Toolbelt
export GIT_MERGE_AUTOEDIT=no
export PATH="/usr/local/heroku/bin:$PATH"
export GITHUB_CONSUMER_SECRET=e21258573bde5517c3bb73812665d08b4110f168
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.99.100:2376
$(boot2docker shellinit)
export PYTHONDONTWRITEBYTECODE=1
