#check script files loaction
export BASH_CONFIG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#load config files
source $BASH_CONFIG_DIR/settings/git_config/git_main.sh
source $BASH_CONFIG_DIR/settings/aliases.sh
source $BASH_CONFIG_DIR/settings/env.sh
source $BASH_CONFIG_DIR/settings/config.sh
