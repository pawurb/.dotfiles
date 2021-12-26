### About

My development environment customized settings. Couple of aliases and scripts that only I find useful.

Features:
* shell functions and aliases
* ruby and rails console customization, useful methods, and aliases
* git autocompletion and prompt customization
* vim and sublime text settings

### Usage

```bash
echo "gem: --no-document" > .gemrc
echo "source ~/.dotfiles/settings/shell/main.sh" > .zshrc
echo "require '~/.dotfiles/settings/irb/main.rb'" > .irbrc
echo "source ~/.dotfiles/settings/vim/.vimrc" > .vimrc
echo "[include]\n path = ~/.dotfiles/settings/git/config" > .gitconfig
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH/custom/plugins/zsh-vi-mode
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install vim
brew install heroku/brew/heroku
brew install --cask gimp
brew install --cask brave-browser
brew install --cask alfred
brew install --cask flux
brew install --cask iterm2
brew install --cask dropbox
brew install --cask libreoffice
brew install --cask firefox
brew install --cask vlc

gem install bundler
```

## Snippets directory

`~/Library/Application Support/Sublime Text 3/Packages/User`

### Sublime Text config

https://packagecontrol.io/packages/Open%20Search%20Result
https://github.com/sporto/rails_go_to_spec
https://packagecontrol.io/packages/PackageResourceViewer
https://github.com/NeoVintageous/NeoVintageous/issues/342#issuecomment-472904598
https://github.com/NickHatBoecker/CopyFilepathWithLineNumbers

### Notes:

* https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x
* https://www.howtoforge.com/tutorial/how-to-setup-automatic-security-updates-on-ubuntu-1604/
* https://superuser.com/questions/349439/how-to-bind-command-key-in-zsh
