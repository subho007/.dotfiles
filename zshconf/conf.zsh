# before anything loads
source $HOME/.dotfiles/zshconf/before.zsh

export ZSH_PLUGINS_ALIAS_TIPS_TEXT=' alias hint: '

zstyle ':prezto:module:terminal' auto-title 'yes'

if zplug check zsh-users/zsh-history-substring-search; then
  zmodload zsh/terminfo
  bindkey "$terminfo[cuu1]" history-substring-search-up
  bindkey "$terminfo[cud1]" history-substring-search-down
fi

# use the custom history modules
source $HOME/.dotfiles/zshconf/history.zsh

# Load all the alias
source $HOME/.dotfiles/zshconf/alias.zsh

# Load all the alias
source $HOME/.dotfiles/zshconf/functions.zsh

# After everything loads
source $HOME/.dotfiles/zshconf/after.zsh
