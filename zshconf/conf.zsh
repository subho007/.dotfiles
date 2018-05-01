# before anything loads
source $HOME/.dotfiles/zshconf/before.zsh

# color substring search
zstyle ':prezto:module:history-substring-search' color 'yes'

# Set the query found color.
zstyle ':prezto:module:autosuggestions' color 'yes'
zstyle ':prezto:module:autosuggestions:color' found 'fg=147'


bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down


fpath=(/usr/local/share/zsh-completions $fpath)

# Load all the alias
source $HOME/.dotfiles/zshconf/alias.zsh

# Load all the alias
source $HOME/.dotfiles/zshconf/functions.zsh

# After everything loads
source $HOME/.dotfiles/zshconf/after.zsh

alias rvmenv="[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm"
