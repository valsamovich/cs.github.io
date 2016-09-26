### Maven ###
export M2_HOME=/usr/local/apache-maven-3.3.3
export ANDROID_HOME=/Users/samov004/Library/Android/sdk

ORIGINAL_PATH=$PATH:$M2_HOME/bin

### Path ###
export PATH=$JAVA_HOME/bin:$ORIGINAL_PATH:$ANDROID_HOME

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Function to set Java 7
function setJava7 () {
  echo "    ### running setJava7";
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home;
  export PATH=$JAVA_HOME/bin:$ORIGINAL_PATH
}
# Function to set Java 8
function setJava8 () {
  echo "    ### running setJava8";
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home;
  export PATH=$JAVA_HOME/bin:$ORIGINAL_PATH
}

# Java memory settings
export JAVA_OPTS="-Xmx2g -Xms2g"

### Java ###
alias java7=setJava7
alias java8=setJava8

echo "    ### ~/.bash_profile loaded"

### Alias ###
alias c='pushd'
alias d='popd'
alias ea='c ~ > /dev/null; vim .bash_profile; d > /dev/null'
alias rs='c ~ > /dev/null; . .bash_profile; d > /dev/null'

### Bash  ###
alias cl='clear'
alias hi='history'
alias ll='cl; ls -la'
alias ls='ls -GFh'
alias cper='sudo chmod 777 *'

### Git ###
alias gpum='git pull upstream master'
alias gpom='git push origin master'
alias gsync='gpum;gpom'

### Python ###
alias pcmp='python -m py_compile'

### Directories ###
alias cchr='open -a "Google Chrome" --args --profile-directory=EmptyUser'
alias cjvm='c /Library/Java/JavaVirtualMachines > /dev/null'
alias cmav='c /usr/local/apache-maven-3.3.3 > /dev/null'
alias ctom='c /usr/local/apache-tomcat-8.0.24 > /dev/null'
alias cgit='c ~/GitHub > /dev/null'
alias cdown='c ~/Downloads > /dev/null'
alias cdoc='c ~/Documents > /dev/null'
alias catom='c /applications/atom.app/Contents/MacOS/atom > /dev/null'

### ssh
alias cdev='ssh DEV'
alias cprd='ssh PROD01'
alias caws='ssh AWS'
alias cclo='ssh CLOUDERA'
alias chue='ssh HUE'

### Color ###
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\u\[$(tput sgr0)\]\[$(tput setaf 4)\]@\[$(tput setaf 1)\] \w\[$(tput setaf 3)\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\[$(tput sgr0)\] \$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

set -o vi

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

# Set Java 8 by default
java8

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/samov004/.sdkman"
[[ -s "/Users/samov004/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/samov004/.sdkman/bin/sdkman-init.sh"
