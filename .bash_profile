# Begin ~/.bash_profile

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

export TERM="xterm-color"

PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
PS1="\[\033[0m\]\u@\[\033[0;33m\]\h\[\033[0m\]: \W \$ "

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

if [ -d "Library/Frameworks/R.framework/" ] ; then
  append /Library/Frameworks/R.framework/
  export R_HOME=/Library/Frameworks/R.framework/Resources/
fi

if [ -d "/usr/local/cloudbees" ] ; then
  append /usr/local/cloudbees
  export BEES_HOME=/usr/local/cloudbees
fi

if [ -d "/Applications/rapidminer" ] ; then
  export RAPIDMINER_HOME=/Applications/rapidminer
fi

unset append

export EDITOR=vim

if [ `uname` == 'Darwin' ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

if [ -d "$HOME/bin/ec2-api-tools" ] ; then
  export EC2_HOME=$HOME/bin/ec2-api-tools/
fi

if [ -d "$HOME/bin/iamcli" ] ; then
  export AWS_IAM_HOME=$HOME/bin/iamcli/
fi

# End ~/.bash_profile

