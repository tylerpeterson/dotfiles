# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZPLUG_HOME=/usr/local/opt/zplug
export NVM_DIR=$HOME/.nvm
export EDITOR=vim

# output from `brew shellenv`
export HOMEBREW_PREFIX="/usr/local"
export HOMEBREW_CELLAR="/usr/local/Cellar"
export HOMEBREW_REPOSITORY="/usr/local/Homebrew"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/share/man:$MANPATH"
export INFOPATH="/usr/local/share/info:$INFOPATH"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

source $ZPLUG_HOME/init.zsh

zplug romkatv/powerlevel10k, as:theme, depth:1
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:1
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "lukechilds/zsh-nvm"
zplug "lukechilds/zsh-better-npm-completion", defer:2
#zplug "wting/autojump" # didn't seem to work
zplug "plugins/autojump", from:oh-my-zsh
zplug "caarlos0/open-pr", use:"*.sh"

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

export PATH=$PATH:$HOME/bin:/usr/local/opt/go/libexec/bin
# export PS1='%m%#'
export PS1='%?%~%#'

# Need to set this option so that vi-mode can correctly display
# See http://zsh.sourceforge.net/Doc/Release/Options.html
setopt promptsubst

PATH="$PATH:$HOME/bin"

source ~/.zsh-named-directories

if [ -d $HOME/.zshrc.d ]; then
  for x in $HOME/.zshrc.d/* ; do
    test -f "$x" || test -L "$x" || continue
    test -x "$x" || test -L "$x" || continue
    source "$x"
  done
fi

if [ -d $HOME/.zshrc.d-local ]; then
  for x in $HOME/.bashrc.d-local/* ; do
    test -f "$x" || test -L "$x" || continue
    test -x "$x" || test -L "$x" || continue
    source "$x"
  done
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
