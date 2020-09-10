#!/bin/sh
#
# oh-my-zsh
#

# Check ~/.oh-my-zsh

if [ ! -d "~/.oh-my-zsh" ]
then
  echo "  Installing oh-my-zsh for you."

  if test "$(uname)" = "Darwin"
  then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi

fi

exit 0

chsh -s /usr/local/bin/zsh
