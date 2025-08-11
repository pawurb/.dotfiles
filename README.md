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
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 5
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
brew install direnv
brew install gnupg
brew install gnu-tar
brew install pyenv
brew install pinentry-mac
brew install --cask session-manager-plugin
brew install --cask gimp
brew install --cask brave-browser
brew install --cask alfred
brew install --cask iterm2
brew install --cask dropbox
brew install --cask libreoffice
brew install --cask firefox
brew install --cask vlc
brew install --cask sublime-text
brew install --cask disk-inventory-x
brew install --cask docker
brew install difftastic
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

* https://apple.stackexchange.com/questions/154292/iterm-going-one-word-backwards-and-forwards
* https://www.howtoforge.com/tutorial/how-to-setup-automatic-security-updates-on-ubuntu-1604/
* https://superuser.com/questions/349439/how-to-bind-command-key-in-zsh
* https://www.icheft.tech/2020/08/12/Delete-a-word-and-a-line-in-iTerm2/
* https://github.com/jsrn/rails_test_assistant
* https://marketplace.visualstudio.com/items?itemName=CarloCardella.vscode-filesystemtoolbox

### Ghostty

`infocmp -x | ssh host.ssh -- tic -x -`
