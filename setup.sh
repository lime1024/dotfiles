#!/bin/bash
set -o errexit -o pipefail -o xtrace

# install homebrew
eval "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# pull mitamae
url="https://api.github.com/repos/itamae-kitchen/mitamae/releases/latest"
curl -fsSLo /usr/local/bin/mitamae "$(curl ${url} | grep -o 'https:.\+mitamae-x86_64-darwin' | head -n 1)"
chmod +x /usr/local/bin/mitamae
