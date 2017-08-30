# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Plugins
plugins=(gem z)

export PATH=$PATH:~/bin

DISABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# DISABLE_AUTO_UPDATE=true

#don't save history to file
unset HISTFILE

#dont confirm rm *
setopt rmstarsilent

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/home/pablo/.rvm/gems/ruby-2.0.0-p247/bin:/home/pablo/.rvm/gems/ruby-2.0.0-p247@global/bin:/home/pablo/.rvm/rubies/ruby-2.0.0-p247/bin:/home/pablo/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/pablo/.rvm/bin

#add karma executable
export PATH="$PATH:/usr/local/lib/node_modules/karma/bin"

# set encoding
export LANG=en_US.UTF-8

# for shelly stuff
export EDITOR=vi

#Java?
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Load RVM into a shell session *as a function*

# export NVM_DIR="/Users/pablo/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


