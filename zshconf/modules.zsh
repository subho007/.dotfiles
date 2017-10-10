# Plugins from prezto

zplug "modules/homebrew",                   from:prezto
zplug "modules/directory",                  from:prezto
zplug "modules/git",                        from:prezto
zplug "modules/terminal",                   from:prezto
zplug "modules/archive",                    from:prezto
zplug "modules/utility",                    from:prezto, defer:0
zplug "modules/completion",                 from:prezto, on:"modules/utility", defer:2
zplug "modules/history-substring-search",   from:prezto, defer:0
zplug "modules/autosuggestions",            from:prezto, on:"modules/history-substring-search", defer:2


#Plugin from oh-my-zsh

zplug "plugins/kubectl",    from:oh-my-zsh
zplug "plugins/adb",        from:oh-my-zsh
zplug "plugins/extract",    from:oh-my-zsh
zplug "plugins/git-flow",   from:oh-my-zsh
zplug "plugins/golang",     from:oh-my-zsh
zplug "plugins/osx",        from:oh-my-zsh


# Enhanced dir list with git features
zplug "supercrabtree/k"

# Bookmarks and jump
zplug "jocelynmallon/zshmarks"

# Tips for aliases
zplug "djui/alias-tips"

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure",  use:pure.zsh, from:github, as:theme

# zsh-autoenv automatically sources
zplug "Tarrasch/zsh-autoenv"
