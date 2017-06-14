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
"**/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"

ln -s "~/.dotfiles/settings/sublime/config"
"**/Sublime Text 3/Packages/User/Preferences.sublime-settings"
```

### Notes:

https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x
https://github.com/avibrazil/RDM
https://packagecontrol.io/installation

```bash
mkdir ~/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

```bash
echo "gem: --no-document" > .gemrc
```

```bash
defaults write -g ApplePressAndHoldEnabled -bool false
```

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install gimp
brew cask install google-chrome
brew cask install alfred
brew cask install flux
brew cask install iterm2
brew cask install pusher
brew cask install libreoffice
brew cask install recordit
brew cask install sourcetree
brew cask install firefox
brew cask install avibrazil-rdm
```


