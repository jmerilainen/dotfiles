alias reload!='. ~/.zshrc'

alias dotfiles='~/.dotfiles'
alias projects=$PROJECTS
alias p=projects

alias sudo='sudo '

alias updateapps='brew outdated --cask --greedy --verbose | grep -v "(latest)" | awk "{print $1}" | xargs brew reinstall';
alias update='brew update; brew upgrade; brew upgrade --cask; brew cleanup; nvm install --lts; nvm alias default "lts/*"; nvm use default; npm update -g; omz update; composer self-update; heroku update;'

alias hidedesktop='defaults write com.apple.finder CreateDesktop false; killall Finder;'
alias showdesktop='defaults write com.apple.finder CreateDesktop true; killall Finder;'

# Heroku
alias hl='heroku login --sso'
alias s='heroku local'

alias sr='github'