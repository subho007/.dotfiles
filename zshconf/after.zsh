#
# Executes commands at the end of a session.
#
# Authors:
#   Subho Halder <subho.halder@gmail.com>
#
#

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin/

export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

source /usr/local/share/zsh/site-functions

#
# Load private configuration file
#

if [ -f $HOME/.dotfiles/.localzshrc ]; then
  source $HOME/.dotfiles/.localzshrc
fi

#
# Python Hostory and autocompletion support
#

export PYTHONSTARTUP=$HOME/.pythonrc

#
# Ruby using rbenv
#
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export JAVA_HOME=`/usr/libexec/java_home`

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
