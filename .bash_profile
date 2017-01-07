# Begin ~/.bash_profile

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

export TERM="xterm-color"

PS1="\[\033[0m\]\u@\[\033[0;33m\]\h\[\033[0m\]: \W \$ "

PATH="/usr/local/bin:/bin:/sbin:/usr/sbin:/usr/bin:/usr/local/sbin:~/bin:$PATH"

if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -d "$HOME/bin" ] ; then
  PATH=$PATH:"~/bin"
fi

if [ -d "/Library/Frameworks/R.framework/" ] ; then
  export R_HOME="/Library/Frameworks/R.framework"
  PATH=$PATH:$R_HOME
fi

if [ -d "$HOME/lib/apache-uima" ] ; then
  export UIMA_HOME="$HOME/lib/apache-uima"
  PATH=$PATH:$UIMA_HOME/bin
fi

PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

export PATH=$PATH

export EDITOR=vim

export SBT_OPTS="-XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M"

if [ `uname` == 'Darwin' ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

# End ~/.bash_profile
