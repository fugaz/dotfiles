# Begin ~/.bash_profile

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

export TERM="xterm-color"

PS1="\[\033[0m\]\u@\[\033[0;33m\]\h\[\033[0m\]: \W \$ "

#PATH="/usr/local/bin:/usr/local/sbin:$PATH"

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

if [ -d "/usr/local/opt/python/libexec/bin/" ] ; then
  PATH=/usr/local/opt/python/libexec/bin:"$PATH"
fi

if [ -d "$HOME/Library/Python/3.7/bin/" ] ; then
  PATH=$HOME/Library/Python/3.7/bin:"$PATH"
fi

PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

export PATH=$PATH

export EDITOR=vim

if [ `uname` == 'Darwin' ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

# End ~/.bash_profile
