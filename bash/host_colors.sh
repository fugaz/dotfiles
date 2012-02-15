#######################################################################
# $HOME/.bash/host_colors.sh                                          #
# $Id$
#######################################################################

case "$HOSTNAME" in

###################
# My Workstations #
###################
  Achille.local)
  C_HOST="$GREEN"
  ;;

###########
# Servers #
###########
  zeus|bps.fugazza.com)
  C_HOST="$CYAN"
  ;;

##############
# Misc Boxes #
##############
  nerdland)
  C_HOST="$BROWN"
  ;;

esac
