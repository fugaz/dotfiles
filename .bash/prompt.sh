#########################
# $HOME/.bash/prompt.sh #
#########################

###############
# Eterm Title #
###############
if [ $TERM = "xterm" ]; then
  XTITLE="\[\e]0;\u@\h (\w) - Bash \v\a\]"
else
  XTITLE=""
fi

#################
# Prompt Colors #
#################
BLACK="\[\033[0;30m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;36m\]"
RED="\[\033[0;31m\]"
PURPLE="\[\033[0;35m\]"
BROWN="\[\033[0;33m\]"
LIGHT_GRAY="\[\033[0;37m\]"
DARK_GRAY="\[\033[1;30m\]"
LIGHT_BLUE="\[\033[1;34m\]"
LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_CYAN="\[\033[1;36m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
NOTHING="\[\033[0m\]"

##################
# Default Colors #
##################
C_USER="$NOTHING"
C_HOST="$BROWN"
C_PWD="$NOTHING"
C_GT="$NOTHING"

##########################
# Custom Hostname Colors #
##########################
. ~/.bash/host_colors.sh

#############################
# Custom Root Prompt Colors #
#############################
if [ $EUID = "0" ]; then
  C_OP_PAREN="$YELLOW"
  C_USER="$LIGHT_RED"
  C_PWD="$YELLOW"
fi

#################
# Assign to PS1 #
#################

PS1=$C_USER'\u@'$C_HOST'\h'$C_PWD': \W\$ '

export PS1 
