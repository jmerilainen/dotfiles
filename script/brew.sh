#!/usr/bin/env zsh

brew tap homebrew/cask-fonts
brew tap denji/nginx

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Zsh
brew install zsh
brew install zsh-completions

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh
brew install rsync
brew install screen
brew install vim
brew install wget
brew install gmp

# Other
brew install starship

# Install Dev tools
brew install awscli
brew install composer
brew install docker
brew install gh
brew install git
brew install heroku/brew/heroku
brew install mysql@5.7
brew install nginx-full --with-real-ip
brew install nvm
brew install php
brew install php@7.3
brew install php@7.4
brew install redis
brew install svn
brew install yarn

# Media
brew install ffmpeg
brew install gifsicle
brew install imagemagick
brew install jpegoptim
brew install optipng
brew install pngquant
brew install svgo

# Install Apps
brew cask install 1password
brew cask install bettertouchtool
brew cask install browserstacklocal
brew cask install firefox
brew cask install github
brew cask install google-chrome
brew cask install hyper
brew cask install mousepose
brew cask install postman
brew cask install rectangle
brew cask install sequel-ace
brew cask install sip
brew cask install sketch
brew cask install spotify
brew cask install visual-studio-code

# Fonts
brew cask install font-hack

# Remove outdated versions from the cellar.
brew cleanup
