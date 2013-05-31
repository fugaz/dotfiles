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

if [ -d "/usr/lib/roo/bin" ] ; then
  PATH=$PATH:"/usr/lib/roo/bin"
fi

if [ -d "/usr/lib/gradle/bin" ] ; then
  PATH=$PATH:"/usr/lib/gradle/bin"
fi

if [ -d "/Library/Frameworks/R.framework/" ] ; then
  export R_HOME="/Library/Frameworks/R.framework"
  PATH=$PATH:$R_HOME
fi

if [ -d "$HOME/bin/cloudbees" ] ; then
  export BEES_HOME="~/bin/cloudbees"
  PATH=$PATH:$BEES_HOME
fi

if [ -d "$HOME/springsource/grails" ] ; then
  export GRAILS_HOME="~/springsource/grails"
  PATH=$PATH:$GRAILS_HOME/bin
fi

if [ -d "/Applications/rapidminer" ] ; then
  export RAPIDMINER_HOME="/Applications/rapidminer"
fi

export PATH=$PATH

export EDITOR=vim

if [ `uname` == 'Darwin' ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

if [ -d "$HOME/bin/ec2-api-tools" ] ; then
  export EC2_HOME=$HOME/bin/ec2-api-tools/
fi

if [ -d "$HOME/.aws/" ] ; then
  export AWS_CREDENTIAL_FILE=$HOME/.aws/aws_credential-file
fi

if [ -d "$HOME/bin/iamcli" ] ; then
  export AWS_IAM_HOME=$HOME/bin/iamcli/
fi

# End ~/.bash_profile


##
# Your previous /Users/fugaz/.bash_profile file was backed up as /Users/fugaz/.bash_profile.macports-saved_2012-12-02_at_16:07:37
##

# MacPorts Installer addition on 2012-12-02_at_16:07:37: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

