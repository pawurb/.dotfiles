# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Plugins
plugins=(gem zsh-syntax-highlighting)

# Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

DISABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_AUTO_UPDATE=true

#don't save history to file
unset HISTFILE

#dont confirm rm *
setopt rmstarsilent

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/home/pablo/.rvm/gems/ruby-2.0.0-p247/bin:/home/pablo/.rvm/gems/ruby-2.0.0-p247@global/bin:/home/pablo/.rvm/rubies/ruby-2.0.0-p247/bin:/home/pablo/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/pablo/.rvm/bin

#for RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#for Clojure-Script
export CLOJURESCRIPT_HOME=/home/pablo/Programming/Clojure/clojurescript
export PATH=$PATH:$CLOJURESCRIPT_HOME/bin

#add karma executable
export PATH="$PATH:/usr/local/lib/node_modules/karma/bin"

# set encoding
export LANG=en_US.UTF-8

# set priority homebrew path
export PATH=/usr/local/bin:$PATH

# for shelly stuff
export EDITOR=vi

# git language learning hook
export TARGET_LANG=tr
git(){[[ "$@" = commit\ -m* ]]&&normit en $TARGET_LANG ${${@:$#}//./} ;command git $@}

#Java?
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
