### Maven ###
export M2_HOME=/usr/local/apache-maven-3.3.3

ORIGINAL_PATH=$PATH:$M2_HOME/bin

### Path ###
export PATH=$JAVA_HOME/bin:$ORIGINAL_PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Function to set Java 7
function setJava7 () {
  echo "    #### running setJava7";
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home;
  export PATH=$JAVA_HOME/bin:$ORIGINAL_PATH
}
# Function to set Java 8
function setJava8 () {
  echo "    #### running setJava8";
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home;
  export PATH=$JAVA_HOME/bin:$ORIGINAL_PATH
}

### Java ###
alias java7=setJava7
alias java8=setJava8
alias h=history

echo "    ### ~/.bash_profile loaded"

### Alias ###
alias c='pushd'
alias d='popd'
alias cdev='c ~/dev > /dev/null'
alias cdown='c /Users/samov004/Downloads > /dev/null'
alias cfs='c /Users/samov004/dev/lrn/node/rest/fake-service > /dev/null'
alias cl='clear'
alias cll='cl; ll'
alias ea='c ~ > /dev/null; vim .bash_profile; d > /dev/null'
alias gb='git branch'
alias gs='cl; git status'
alias h='history'
alias l='cl; ls'
alias ll='cl; ls -la'
alias rs='c ~ > /dev/null; . .bash_profile; d > /dev/null'
alias ls='ls -GFh'
alias testbrowser='open -a "Google Chrome" --args --profile-directory=EmptyUser'
alias cdoc='c ~/Documents > /dev/null'
alias cdown='c ~/Downloads > /dev/null'
alias cper='sudo chmod 777 *'

alias cjvm='c /Library/Java/JavaVirtualMachines > /dev/null'
alias cmav='c /usr/local/apache-maven-3.3.3 > /dev/null'
alias ctom='c /usr/local/apache-tomcat-8.0.24 > /dev/null'
alias cgit='c /Users/samov004/GitHub > /dev/null'

### Color ###
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\u\[$(tput sgr0)\]\[$(tput setaf 4)\]@\[$(tput setaf 1)\] \w\[$(tput setaf 3)\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\[$(tput sgr0)\] \$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

set -o vi

source ~/.profile

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

# Set Java 8 by default
java8