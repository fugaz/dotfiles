#######################################################################
# ~/.bash/aliases.sh                                                  #
# version 0.2.1                                                       #
# by Paul Duncan <pabs@pablotron.org>                                 #
#######################################################################

########################
# Basic System Aliases #
########################


alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
if ! [ -x "$(command -v newsboat)" ]; then
  alias nb='newsboat -r'
fi

# enable directory colors
alias ls='ls -G'

# misc
alias ..="cd .."
alias c="clear"

alias xmms="xmms -e"

