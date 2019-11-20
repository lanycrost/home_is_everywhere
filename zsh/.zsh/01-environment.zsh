#!/usr/bin/env zsh

# Path variable
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

# Preferred text editor
export EDITOR=vim
export VISUAL=vim

# Locales
export LC_COLLATE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LESSCHARSET=utf-8

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Name of the zsh theme to load.
export ZSH_THEME="robbyrussell"

# Enable command auto-correction.
export ENABLE_CORRECTION="true"

# Load oh-my-zsh plugins.
export plugins=(
  git
  alias-tips
  dirhistory
  extract
  fancy-ctrl-z
  fzf
  fast-syntax-highlighting
  globalias
  tmux
  web-search
  z
  zsh-autosuggestions
  zsh-navigation-tools
)

export TERM=xterm-256color

if [ "$TERM" = "linux" ]; then
  echo -en "\e]P0000000" #black
  echo -en "\e]P85e5e5e" #darkgrey
  echo -en "\e]P18a2f58" #darkred
  echo -en "\e]P9cf4f88" #red
  echo -en "\e]P2287373" #darkgreen
  echo -en "\e]PA53a6a6" #green
  echo -en "\e]P3914e89" #darkyellow
  echo -en "\e]PBbf85cc" #yellow
  echo -en "\e]P4395573" #darkblue
  echo -en "\e]PC4779b3" #blue
  echo -en "\e]P55e468c" #darkmagenta
  echo -en "\e]PD7f62b3" #magenta
  echo -en "\e]P62b7694" #darkcyan
  echo -en "\e]PE47959e" #cyan
  echo -en "\e]P7899ca1" #lightgrey
  echo -en "\e]PFc0c0c0" #white
  clear
fi

# Man pages configuration
export LESS_TERMCAP_mb="\e[1;31m"
export LESS_TERMCAP_md="\e[1;36m"
export LESS_TERMCAP_me="\e[0m"
export LESS_TERMCAP_se="\e[0m"
export LESS_TERMCAP_so="\e[1;44;33m"
export LESS_TERMCAP_ue="\e[0m"
export LESS_TERMCAP_us="\e[1;32m"
