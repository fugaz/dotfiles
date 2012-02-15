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
alias bt='btlaunchmany.py --torrent_dir /Users/Shared/Torrent/ --display_interval 60 --max_upload_rate 0'

# enable directory colors
eval `dircolors`
alias ls='ls --color=auto '

# misc
alias ..="cd .."
alias c="clear"

alias xmms="xmms -e"

