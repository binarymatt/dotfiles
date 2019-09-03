alias ll='ls -hlatr'
alias vim='/usr/local/Cellar/macvim/8.1-155/MacVim.app/Contents/MacOS/Vim'
alias cleangit='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
alias localserver='python -m SimpleHTTPServer 8000'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

#export CLICOLOR=1
#export CLICOLOR_FORCE=1
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_TRUNC=5
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  #hg            # Mercurial section (hg_branch  + hg_status)
  #package       # Package version
  node          # Node.js section
  #ruby          # Ruby section
  #elixir        # Elixir section
  #xcode         # Xcode section
  #swift         # Swift section
  golang        # Go section
  #php           # PHP section
  #rust          # Rust section
  #haskell       # Haskell Stack section
  #julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  #venv          # virtualenv section
  #conda         # conda virtualenv section
  #pyenv         # Pyenv section
  #dotnet        # .NET section
  #ember         # Ember.js section
  #kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_NODE_SHOW=false
export VOLTA_HOME="$HOME/.volta"
[ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

export PATH="$HOME/bin:$VOLTA_HOME/bin:$PATH"

