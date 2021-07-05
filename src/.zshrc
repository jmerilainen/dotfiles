# ZSH

#
# Exports
#

# Directories
export PROJECTS=$HOME/Projects
export PROJECTS_WORK=$PROJECTS/frc
export PROJECTS_MY=$PROJECTS/jmerilainen
export DOTFILES=$PROJECTS_MY/dotfiles

# Other
export EDITOR="code"
export XDEBUG_CONFIG="idekey=VSCODE"

# Remove weird % from top of terminal (affects Hyper)
unsetopt PROMPT_SP

#
# Oh My Zsh
#
export ZSH=$HOME/.oh-my-zsh

# Enable completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

plugins=()

source $ZSH/oh-my-zsh.sh

#
# Zsh
#

# all of our zsh files
typeset -U config_files
config_files=($DOTFILES/**/*.zsh)
# load everything but the path and completion files
for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}
do
    source $file
done

# # source $(brew --prefix zsh-autosuggestions)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# # source $(brew --prefix zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export STARSHIP_CONFIG=$DOTFILES/starship/starship.toml
eval "$(starship init zsh)"

export PATH=$(brew --prefix)/bin:$PATH
export PATH=$(brew --prefix)/sbin:$PATH
# export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
# export PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"
# export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
# export PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"
export PATH=$DOTFILES/bin:$PATH

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Other
source $HOME/.aliases
