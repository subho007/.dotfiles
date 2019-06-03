#!/bin/zsh
set -e

printf '%s ' 'are you using zsh shell to run this script? (y/n)'
read ans

if [[ $ans =~ ^[Nn]$ ]]; then
    echo -e "Run this script only in a zsh shell !"
    exit 0
fi


if [[ -d "$HOME/.zplug" ]]; then
    printf '%s ' 'do you want to do a clean install and remove zplug? (y/n)'
    read ans1

    if [[ $ans1 =~ ^[Yy]$ ]]; then
        echo -e "Removing zplug !"
        rm -rf $HOME/.zplug
    fi
fi

# Backing up important dotfiles
if [[ -d "$HOME/.vim" && ! -L "$HOME/.vim" ]]; then
    printf '%s ' 'do you want to do a clean install and remove .vim? (y/n)'
    read ans2
    if [[ $ans2 =~ ^[Yy]$ ]]; then
        echo -e "moving and backing up ~/.vim to ~/.vim_backup"
        mv ~/.vim ~/.vim_backup
    fi
fi

if [[ -d "$HOME/.zshrc" && ! -L "$HOME/.zshrc" ]]; then
  echo -e "moving and backing up ~/.zshrc to ~/.zshrc_backup"
  mv ~/.zshrc ~/.zshrc_backup
fi

if [[ ! -f "install.sh" && ! -d "dots" && ! -d "zshconf" ]]; then
    echo -e "Running via curl"
    if [[ ! -d "$HOME/.dotfiles" ]]; then
        git clone https://github.com/subho007/.dotfiles.git $HOME/.dotfiles
    else
        echo -e "Already cloned, please update it using git pull"
        exit 0
    fi
    PWD=$HOME/.dotfiles
else
    echo -e "Running via manually git cloned repo"
    echo -e "Make sure you cloned it in your home directory"
    PWD=$(pwd)
fi

# Running installations

cd $HOME

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.dotfiles/dots/*; do
    ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo -e "Do you use NeoVim ?(y/n)"
read neovim

if [[ $ans =~ ^[Yy]$ ]]; then
    mkdir -p ~/.config/nvim
    echo 'source ~/.vimrc' > ~/.config/nvim/init.vim
fi

echo -e "Installing font"
open "$PWD/.dotfiles/fonts/Meslo_code_win.otf"
open "$PWD/.dotfiles/fonts/Meslo_code.otf"

printf "%s " "Are you using MacOSX ? (y/n)"
read osx

if [[ $osx =~ ^[Yy]$ ]]; then
    echo -e "Installing OSX customization !"
    printf "%s " "Are you using iTerm2 ? (y/n)"
    read iterm

    if [[ $iterm =~ ^[Yy]$ ]]; then
        open $HOME/.dotfiles/custom/gruvbox-dark.itermcolors
    fi
fi

echo -e "Now open another tab for the magic to begin !"
