#ls command colors customization
export CLICOLOR=1
export LSCOLORS=cxBxhxDxfxhxhxhxhxcxcx

#prompt customization
export PS1="/\W \[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \W\$ "

#don't save history to file
unset HISTFILE

#do i need it ?
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

#for RVM to work
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
