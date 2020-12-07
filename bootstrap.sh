#!/bin/sh

cd "$(dirname "$0")"
git pull
function copyAliases() {
  cp aliases.sh .bash/aliases.sh
  cp aliases.sh .oh-my-zsh/custom/aliases.zsh
  rm aliases.sh
}
function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
    copyAliases
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi
unset doIt
