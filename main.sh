#check script file location
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#load config files
source $DOTFILES_DIR/settings/shell/main.sh
source $DOTFILES_DIR/settings/git/main.sh
