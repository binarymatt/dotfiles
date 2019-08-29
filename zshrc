if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
autoload -Uz compinit && compinit
  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
