#
# Executes commands at the end of a session.
#
# Authors:
#   Subho Halder <subho.halder@gmail.com>
#
#


function search {
    grep -irl \
        --exclude=\*.{pyc,swp,un~,png,jpg} \
        --exclude-dir=".git" \
        --exclude-dir="node_modules" \
        --exclude-dir="bower_components" \
        --exclude-dir="dist" \
        --exclude-dir="tmp" \
        --exclude-dir=".sass_cache" \
        --exclude-dir="Appknox" \
        --exclude-dir="build" \
        --color "$*" .
}

# Start an HTTP server from a directory, optionally specifying the port
function server() {
    local port="${1:-8000}"
    sleep 1 && open "http://localhost:${port}/" &
    # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
    # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
    python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

function rmpyc {
    find . -name "*.pyc" -exec rm -rf {} \;
}

function rmed {
    find . -empty  -type d ! -path "./.git*" -delete
}

function skype {
    local number="${1:-200}"
    open -na /Applications/Skype.app --args -DataPath /Users/$(whoami)/Library/Application\ Support/Skype${number}
}
function skype-del {
    local number="${1:-200}"
    rm -rf /Users/$(whoami)/Library/Application\ Support/Skype${number}
}

# Kubectl Function
function kubectl() {
    if ! type __start_kubectl >/dev/null 2>&1; then
        source <(command kubectl completion zsh)
    fi

    command kubectl "$@"
}

