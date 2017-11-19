# Plugins from prezto

zplug "modules/homebrew",                   from:prezto
zplug "modules/directory",                  from:prezto
zplug "modules/git",                        from:prezto
zplug "modules/terminal",                   from:prezto
zplug "modules/archive",                    from:prezto
zplug "modules/utility",                    from:prezto
zplug "modules/history",                    from:prezto
zplug "modules/completion",                 from:prezto, on:"modules/utility"
zplug "modules/autosuggestions",            from:prezto, on:"modules/history-substring-search"


#Plugin from oh-my-zsh

zplug "plugins/kubectl",    from:oh-my-zsh
zplug "plugins/adb",        from:oh-my-zsh
zplug "plugins/extract",    from:oh-my-zsh
zplug "plugins/git-flow",   from:oh-my-zsh
zplug "plugins/golang",     from:oh-my-zsh


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

# History search like fish shell
# zplug "zsh-users/zsh-syntax-highlighting"
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search", on:"zdharma/fast-syntax-highlighting"

# Enhanced history search on ctrl-r
zplug "b4b4r07/zsh-history-enhanced"
