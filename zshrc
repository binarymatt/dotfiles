if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
#autoload -Uz compinit && compinit
# Set Spaceship ZSH as a prompt
#autoload -U promptinit; promptinit
zstyle ':completion:*' menu select
autoload -Uz compinit promptinit
compinit
promptinit
prompt spaceship
