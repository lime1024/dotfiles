#!/bin/bash
set -o errexit -o pipefail -o xtrace

# install homebrew
eval "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# check architecture
case "$(uname -m)" in
  x86_64) arch=x86_64 ;;
  arm64) arch=aarch64 ;;
  *) echo "unknown arch" >&2; exit 1
esac

# pull mitamae
curl -fsSLo /usr/local/bin/mitamae https://github.com/itamae-kitchen/mitamae/releases/latest/download/mitamae-${arch}-darwin
chmod +x /usr/local/bin/mitamae
