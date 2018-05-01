# Plugins from prezto

zplug "modules/history",                    from:prezto
zplug "modules/utility",                    from:prezto
zplug "modules/completion",                 from:prezto, on:"modules/utility"

# Bookmarks and jump
zplug "jocelynmallon/zshmarks"

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure",  use:pure.zsh, from:github, as:theme

# zsh-autoenv automatically sources
zplug "Tarrasch/zsh-autoenv"

# History search like fish shell
# zplug "zsh-users/zsh-syntax-highlighting"
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search", on:"zdharma/fast-syntax-highlighting"
zplug "modules/autosuggestions",            from:prezto, on:"modules/history-substring-search"  # From prezto
