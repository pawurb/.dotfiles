### About

My development environment customized settings. Couple of aliases and scripts that only I find useful.

Features:
* shell functions and aliases
* ruby and rails console customization, useful methods, and aliases
* git autocompletion and prompt customization
* vim and sublime text settings
* [Termit](https://github.com/pawurb/termit) gem integration

### Usage

In **~/.zshrc**
```bash
source ~/.dotfiles/settings/shell/main.sh
```

In **~/.irbrc**
```ruby
require "~/.dotfiles/settings/irb/main.rb"
```

In **~/.vimrc**
```bash
source ~/.dotfiles/settings/vim/.vimrc
```

In **~/.gitconfig**
```bash
[include]
  path = ~/.dotfiles/settings/git/config
```

Link **Sublime** settings:
```bash
ln -s "~/.dotfiles/settings/sublime/key_mappings"
"**/Sublime Text 2/Packages/User/Default (OSX).sublime-keymap"

ln -s "~/.dotfiles/settings/sublime/config"
"**/Sublime Text 2/Packages/User/Preferences.sublime-settings"
```

Enable pressing key on Mac OS X:
```bash
defaults write -g ApplePressAndHoldEnabled -bool false
```
### Notes:

https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x



