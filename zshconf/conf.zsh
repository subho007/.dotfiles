# before anything loads
source $HOME/.dotfiles/zshconf/before.zsh

export ZSH_PLUGINS_ALIAS_TIPS_TEXT=' alias hint: '

# auto title the terminal
zstyle ':prezto:module:terminal' auto-title 'yes'

# color substring search
zstyle ':prezto:module:history-substring-search' color 'yes'

# Set the query found color.
zstyle ':prezto:module:autosuggestions' color 'yes'
zstyle ':prezto:module:autosuggestions:color' found 'fg=147'


bindkey -v
bindkey "^R" history-incremental-search-backward
bindkey "^[[1;2D" backward-word  # Shift + Left moves cursor a word back
bindkey "^[[1;2C" forward-word   # Shift + Right moves cursor a word forward

fpath=(/usr/local/share/zsh-completions $fpath)

# Load all the alias
source $HOME/.dotfiles/zshconf/alias.zsh

# Load all the alias
source $HOME/.dotfiles/zshconf/functions.zsh

# After everything loads
source $HOME/.dotfiles/zshconf/after.zsh
