### About

My development environment customized settings. Couple of aliases and scripts that only I find useful.

Features:
* bash functions and aliases
* ruby and rails console customization, useful methods, and aliases
* git autocompletion and prompt customization
* vim and sublime text settings
* [Termit](https://github.com/pawurb/termit) gem integration

### Usage

In **~/.bashrc**
```bash
source **/dofiles/main.sh
```

In **~/.irbrc**
```ruby
require ENV["BASH_CONFIG_DIR"] + "/settings/irb/main.rb"
```

In **~/.vimrc**
```bash
source $BASH_CONFIG_DIR/settings/vim/config
```

Link **Sublime** settings:
```bash
ln -s **/dofiles/settings/sublime/key_mappings
**/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap

ln -s **/dofiles/settings/sublime/config
**/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
```

### Sources

Some of them:

* http://github.com/jimeh/git-aware-prompt
* http://github.com/plu/dotfiles/blob/master/git-completion.sh
* http://rakeroutes.com/blog/customize-your-irb/
* http://www.fizerkhan.com/blog/posts/What-I-learned-from-other-s-shell-scripts.html

