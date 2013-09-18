### About

My shell environment customized settings. Couple of aliases and scripts that only I find useful.

Features:
* bash functions and aliases
* ruby and rails console customization, useful methods, and aliases
* git autocompletion and prompt customization
* vim and sublime text settings
* [Termit](https://github.com/pawurb/termit) gem integration

### Usage

In **~/.bashrc**
```bash
source **/my_very_own_shell/main.sh
```

In **~/.irbrc**
```ruby
require ENV["BASH_CONFIG_DIR"] + "/settings/irb_config/irb_main.rb"
```

In **~/.vimrc**
```bash
source $BASH_CONFIG_DIR/settings/vim_config/.vimrc
```

Link **Sublime** settings:
```bash
ln **/my_very_own_shell/settings/sublime_config/key_mappings
/Users/username/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap

ln **/my_very_own_shell/settings/sublime_config/settings
/Users/username/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
```

### Sources

Some of them:

* http://github.com/jimeh/git-aware-prompt
* http://github.com/plu/dotfiles/blob/master/git-completion.sh
* http://rakeroutes.com/blog/customize-your-irb/
* http://www.fizerkhan.com/blog/posts/What-I-learned-from-other-s-shell-scripts.html

