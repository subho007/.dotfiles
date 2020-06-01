# color substring search
zstyle ':prezto:module:history-substring-search' color 'yes'

# Set the query found color.
zstyle ':prezto:module:autosuggestions' color 'yes'
zstyle ':prezto:module:autosuggestions:color' found 'fg=147'


bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down


fpath=(/usr/local/share/zsh-completions $fpath)

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi
