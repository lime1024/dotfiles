#!/bin/bash
set -o errexit -o pipefail -o xtrace

# run mitamae
if [ "$1" = '--dry-run' ] ; then
  /usr/local/bin/mitamae local --dry-run /tmp/dotfiles-master/mitamae/roles/darwin/default.rb
else
  /usr/local/bin/mitamae local /tmp/dotfiles-master/mitamae/roles/darwin/default.rb
fi
