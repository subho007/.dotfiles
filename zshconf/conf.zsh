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
# bindkey "^R" history-incremental-search-backward
bindkey "^[[1;2D" backward-word  # Shift + Left moves cursor a word back
bindkey "^[[1;2C" forward-word   # Shift + Right moves cursor a word forward
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

if zplug check "b4b4r07/zsh-history-enhanced"; then
    ZSH_HISTORY_FILTER="fzy:fzf:peco:percol"
    ZSH_HISTORY_KEYBIND_GET_BY_DIR="^r"
    ZSH_HISTORY_KEYBIND_GET_ALL="^r^a"
fi


fpath=(/usr/local/share/zsh-completions $fpath)

# Load all the alias
source $HOME/.dotfiles/zshconf/alias.zsh

# Load all the alias
source $HOME/.dotfiles/zshconf/functions.zsh

# After everything loads
source $HOME/.dotfiles/zshconf/after.zsh

