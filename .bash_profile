# Begin ~/.bash_profile

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

export TERM="xterm-color"

PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
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

PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

export PATH=$PATH

export EDITOR=vim

if [ `uname` == 'Darwin' ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

# End ~/.bash_profile


##
# Your previous /Users/fugaz/.bash_profile file was backed up as /Users/fugaz/.bash_profile.macports-saved_2012-12-02_at_16:07:37
##

# MacPorts Installer addition on 2012-12-02_at_16:07:37: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

