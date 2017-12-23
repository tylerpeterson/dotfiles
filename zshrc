export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
export NVM_DIR=/Users/ty/.nvm

export EDITOR=vim

zplug "plugins/vi-mode", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:1
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "lukechilds/zsh-nvm"
zplug "lukechilds/zsh-better-npm-completion", defer:2

# Actually install plugins, prompt user input
if ! zplug check --verbose; then
    printf "Install zplug plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
#zplug load

function f() { find . -iname "*$1*" ${@:2} }

function r() { grep "$1" ${@:2} -R . }

# export PS1='%m%#'
export PS1='%?%~%#'

# Need to set this option so that vi-mode can correctly display
# See http://zsh.sourceforge.net/Doc/Release/Options.html
setopt promptsubst

source ~/.zsh-named-directories
