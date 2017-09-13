# .dotfiles

This repo contains my `dotfiles` which I use for my system. 
There are certain pre-requiste to use this dotfiles. 
This is mainly for MacOSX system and not Linux systems. Once I start using linux system, I might modify this to support linux system


## Getting Started

These instructions will get you a copy of the project up and running on your local machine

### Prerequisites

What things you need to install the software and how to install them

- MacOSX (Of-Course !)
- zsh (Change to zsh shell using `chsh -s $(which zsh)` )
- HomeBrew ( To install use `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` )
- neovim ( use `brew install neovim` )
- python2 & python3 ( Use homebrew to install them )
- iTerm2 ( Use homebrew to istall them )

### Installing

You can run this script to make the installation process much simpler

```
curl -fsSL https://raw.githubusercontent.com/subho007/.dotfiles/master/install.sh | zsh
```

Follow the on-screen instruction and let the magic happen

If you have cloned the repo, make sure you do it in your `$HOME` directory. 
You can run the `./install.sh` script and it will automatically detect and set-up the dotfiles for you.

## Contributing

Just send me a PR with improvements :)

If you face any issue, feel free to open a new issue [here](https://github.com/subho007/.dotfiles/issues/new)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Inspired by [drahosp/dotfiles](https://github.com/drahosp/dotfiles)
* zplug - [source](https://github.com/zplug/zplug)
* vim-plug - [source](https://github.com/junegunn/vim-plug)
* Hat tip to anyone who's code was used
