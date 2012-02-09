# Begin ~/.bash_profile

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

export TERM="xterm-color"

PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "

append () {
  # First remove the directory
  local IFS=':'
  local NEWPATH
  for DIR in $PATH; do
     if [ "$DIR" != "$1" ]; then
       NEWPATH=${NEWPATH:+$NEWPATH:}$DIR
     fi
  done

  # Then append the directory
  export PATH=$NEWPATH:$1
}

if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -d "$HOME/bin" ] ; then
  append $HOME/bin
fi

if [ -d "/usr/lib/roo/bin" ] ; then
  append /usr/lib/roo/bin
fi

if [ -d "/usr/lib/gradle/bin" ] ; then
  append /usr/lib/gradle/bin
fi

unset append

export EDITOR=vim

if [ `uname` == 'Darwin' ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

# End ~/.bash_profile

