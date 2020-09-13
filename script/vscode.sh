#!/usr/bin/env zsh

ln -s $DOTFILES/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -s $DOTFILES/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json

code --install-extension anseki.vscode-color
code --install-extension bradlc.vscode-tailwindcss
code --install-extension dakara.dakara-foldplus
code --install-extension eamodio.gitlens
code --install-extension editorconfig.editorconfig
code --install-extension felixfbecker.php-intellisense
code --install-extension Tyriar.sort-lines
code --install-extension whizkydee.material-palenight-theme
