#!/usr/bin/env zsh

echo "Setting dotfiles..."

rsync -avh --no-perms src/ ~;

echo "Done!"