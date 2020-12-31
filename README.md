### About

My development environment customized settings. Couple of aliases and scripts that only I find useful.

Features:
* shell functions and aliases
* ruby and rails console customization, useful methods, and aliases
* git autocompletion and prompt customization
* vim and sublime text settings
* [Termit](https://github.com/pawurb/termit) gem integration

### Usage

```bash
echo "gem: --no-document" > .gemrc
echo "source ~/.dotfiles/settings/shell/main.sh" > .zshrc
echo "require '~/.dotfiles/settings/irb/main.rb'" > .irbrc
echo "source ~/.dotfiles/settings/vim/.vimrc" > .vimrc
echo "[include]\n path = ~/.dotfiles/settings/git/config" > .gitconfig
```

```bash
ln -s "~/.dotfiles/settings/sublime/key_mappings"
"~/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"

ln -s "~/.dotfiles/settings/sublime/config"
"~/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
```


```bash
mkdir ~/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```


```bash
defaults write -g ApplePressAndHoldEnabled -bool false
```

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install vim
brew install postgresql
brew install go
brew services start postgresql
brew install heroku/brew/heroku
brew cask install gimp
brew cask install google-chrome
brew cask install alfred
brew cask install flux
brew cask install iterm2
brew cask install pusher
brew cask install dropbox
brew cask install libreoffice
brew cask install recordit
brew cask install sourcetree
brew cask install firefox
brew cask install avibrazil-rdm
brew cask install vlc

gem install bundler
gem install zeus
gem install cocoapods
pod setup
```

### Sublime Text config

https://packagecontrol.io/packages/Open%20Search%20Result
https://github.com/sporto/rails_go_to_spec
https://packagecontrol.io/packages/PackageResourceViewer
https://github.com/NeoVintageous/NeoVintageous/issues/342#issuecomment-472904598
https://github.com/NickHatBoecker/CopyFilepathWithLineNumbers

### Notes:

* https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x
* https://www.howtoforge.com/tutorial/how-to-setup-automatic-security-updates-on-ubuntu-1604/


