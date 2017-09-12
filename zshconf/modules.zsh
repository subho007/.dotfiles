# Plugins from prezto

zplug "modules/history",    from:prezto
zplug "modules/utility",    from:prezto
zplug "modules/homebrew",   from:prezto
zplug "modules/terminal",   from:prezto
zplug "modules/editor",     from:prezto
zplug "modules/directory",  from:prezto
zplug "modules/completion", from:prezto
zplug "modules/git",        from:prezto
zplug "modules/homebrew",   from:prezto

# zsh users
zplug "zsh-users/zsh-completions",              defer:0
zplug "zsh-users/zsh-autosuggestions",          defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",      defer:3, on:"zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3, on:"zsh-users/zsh-syntax-highlighting"

# Enhanced cd
zplug "b4b4r07/enhancd", use:init.sh

# Bookmarks and jump
zplug "jocelynmallon/zshmarks"

# Enhanced dir list with git features
zplug "supercrabtree/k"

# Tips for aliases
zplug "djui/alias-tips"

# Docker completion
zplug "felixr/docker-zsh-completion"

# Load theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
