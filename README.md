### About

My development environment customized settings. Couple of aliases and scripts that only I find useful.

Features:
* shell functions and aliases
* ruby and rails console customization, useful methods, and aliases
* git autocompletion and prompt customization
* vim and sublime text settings

### Usage

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "gem: --no-document" > .gemrc
echo "source ~/.dotfiles/settings/shell/main.sh" > .zshrc
echo "require '~/.dotfiles/settings/irb/main.rb'" > .irbrc
echo "source ~/.dotfiles/settings/vim/.vimrc" > .vimrc
echo "[include]\n path = ~/.dotfiles/settings/git/config" > .gitconfig
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH/custom/plugins/zsh-vi-mode
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add nodejs
asdf plugin-add yarn
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
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git@github.com:dokku/dokku.git ~/.dokku
brew install vim
brew install heroku/brew/heroku
brew install postgresql
brew install libsodium
brew install ansible
brew install awscli
brew install --cask session-manager-plugin
brew install --cask gimp
brew install --cask brave-browser
brew install --cask alfred
brew install --cask flux
brew install --cask iterm2
brew install --cask dropbox
brew install --cask libreoffice
brew install --cask firefox
brew install --cask vlc
brew install --cask sublime-text
brew install --cask docker
```

In vim:

```bash
:PluginInstall
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
* https://www.icheft.tech/2020/08/12/Delete-a-word-and-a-line-in-iTerm2/
