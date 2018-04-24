alias l="ls"  # normal ls
alias ll="ls -al"
alias kk="k -a"  # zsh plugin for k
alias j="jump"
alias bm="bookmark"
alias dm="deletemark"
alias lb="showmarks"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"
alias git=hub

# IP addresses
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
  
# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
