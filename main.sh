#check script file location
export BASH_CONFIG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#load config files
source $BASH_CONFIG_DIR/settings/git/main.sh
source $BASH_CONFIG_DIR/settings/shell/main.sh
