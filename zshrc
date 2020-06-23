# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit snippet OMZ::plugins/vi-mode/vi-mode.plugin.zsh
#zinit "zsh-users/zsh-syntax-highlighting", defer:1
#zinit "zsh-users/zsh-history-substring-search"
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::plugins/npm/npm.plugin.zsh
#zinit "lukechilds/zsh-nvm"
#zinit "lukechilds/zsh-better-npm-completion", defer:2
# must brew install autojump before this plugin will work
zinit snippet OMZ::plugins/autojump/autojump.plugin.zsh
#zinit "caarlos0/open-pr", use:"*.sh"

