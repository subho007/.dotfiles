# Plugins from prezto

zplug "modules/homebrew",   from:prezto
zplug "modules/directory",  from:prezto
zplug "modules/git",        from:prezto
zplug "modules/terminal",   from:prezto

#Plugin from oh-my-zsh

zplug "plugins/kubectl",    from:oh-my-zsh
zplug "plugins/adb",        from:oh-my-zsh
zplug "plugins/extract",    from:oh-my-zsh
zplug "plugins/git-flow",   from:oh-my-zsh
zplug "plugins/golang",     from:oh-my-zsh
zplug "plugins/osx",        from:oh-my-zsh

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

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure",  use:pure.zsh, from:github, as:theme

# zsh-autoenv automatically sources
zplug "Tarrasch/zsh-autoenv"
