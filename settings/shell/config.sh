# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Plugins
plugins=(z zsh-vi-mode)

. $HOME/.asdf/asdf.sh

export PATH=$PATH:~/bin
export PATH=/usr/local/bin:$PATH

DISABLE_CORRECTION="true"

# zsh-vi-mode
ZVM_VI_INSERT_ESCAPE_BINDKEY=kj
ZVM_VI_HIGHLIGHT_FOREGROUND=#93a1a1
ZVM_VI_HIGHLIGHT_BACKGROUND=#073642
ZVM_VI_HIGHLIGHT_EXTRASTYLE=bold,underline   # bold and underline
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# DISABLE_AUTO_UPDATE=true

#don't save history to file
unset HISTFILE

#dont confirm rm *
setopt rmstarsilent

source $ZSH/oh-my-zsh.sh

#add karma executable
export PATH="$PATH:/usr/local/lib/node_modules/karma/bin"

# set encoding
export LANG=en_US.UTF-8

# for shelly stuff
export EDITOR=vi

#Java?
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home"

eval "$(direnv hook zsh)"

export PATH="/usr/local/opt/node@6/bin:$PATH"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export HOMEBREW_NO_ANALYTICS=1
export ERL_AFLAGS="-kernel shell_history enabled"

zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh' "bindkey '^[begin' fzf-history-widget")
