#RoR
alias bu='bundle'
alias es='rails s' #Execute Server
alias ei='irb' #Execute IRB
alias ec='rails c' #Execute Console
alias ects='RAILS_ENV=test rails console -s' ##Execute Console Test Sandbox
alias be='bundle exec'
alias dbm='bundle exec rake db:migrate'
alias dbd='bundle exec rake db:drop'
alias dbc='bundle exec rake db:create'
alias tdbm='RAILS_ENV=test bundle exec rake db:migrate'
alias tdbd='RAILS_ENV=test bundle exec rake db:drop'
alias tdbc='RAILS_ENV=test bundle exec rake db:create'
alias dbreload='dbd && dbc && dbm && tdbd && tdbc && tdbm && bundle exec rake db:seed' # Database from scratch
alias rs='bundle exec rspec'
alias rss='bundle exec rspec spec/'
alias zs='zeus start'
alias zz='rm .zeus.sock & zeus start' #Zrestart Zeus
alias zrr='zeus rspec spec'
alias zr='zeus rspec' #Zeus RSpec file
alias zc='zeus console'
alias zrake='zeus rake'
alias rds='redis-server'
alias el='elasticsearch'
alias sq='sidekiq'
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log' # Postgres
alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start' # Postgres Start
alias pgst='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop' # Postgres Stop
alias pss='python -m SimpleHTTPServer' #Python Server Start
alias ees='elasticsearch' # Execute Elastic Search
alias gr='grep --color'
alias s='subl .' #Sublime Open
alias glp='gulp'
alias frs='foreman start'
alias frd='foreman start --procfile=Procfile-dev'
alias rormem='bundle exec derailed bundle:mem'

#Git
alias g='git status'
alias gp='git push'
alias gpshh='git push heroku master'
alias gpstg='git push staging staging:master'
alias gpl='git pull'
alias gst='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'
alias gsp='git stash pop'
alias ga='git add'
alias gaa='git add . -A' #Git Add All
alias gd='git diff --word-diff'
alias gds='git diff --staged --word-diff'
alias gdl='git diff HEAD~1 --word-diff'
alias gpr='git remote update --prune' # Git Prune: update list of remote branches
alias gbr='git branch -a' #Git Branches
alias gms='git checkout master' # Git Masta
alias gca='git commit --amend'
alias grs='git reset --soft HEAD~1'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gstat="git log --author="pawurb" --oneline --shortstat"


function gm() { # Git Message: commit staged and quote all args as message
  git commit -m "$*"
}

function gdrb() { # Git Delete Remote Branch
  git push origin :$1
}

function gdlb() { # Git Delete Local Branch
  git branch -d $1
}

function gclb() { # Git Create Branch
  git checkout -b $1
}

function gplb { # Git Publish Local Branch
  git push -u origin $1
}


#Shell
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias pd='cd -' #Previous Directory
alias dd='echo $PWD' #Display Directory
alias la='ls -a' #List All
alias ll='ls -GAlh' #Long List
alias df='cd ~/.dotfiles'
alias h='history'
alias c='clear'
alias re='source ~/.zshrc'
alias ex='exit'
alias v='vim'
alias iw='cd ~/Programming/iOS/swift' #iWork

alias pw='cd ~/Programming' #programming work
alias nyan='nc -v nyancat.dakko.us 23' #nyan cat

alias tte='termit pl en' # Translate to Polish
alias ttp='termit en pl' # Translate to English
alias ttf='termit en fr' # Translate to Francuski

#overrides
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'

alias 'aliases'='cat ~/.dotfiles/settings/shell/aliases.sh' #display aliases
alias 'cleanX'='cd ~/Library/Developer/Xcode/DerivedData' # clean xcode logs when crashing too much

alias 'vi'='/usr/local/Cellar/vim/8.0.0459/bin/vim'
alias 'vim'='/usr/local/Cellar/vim/8.0.0459/bin/vim'
alias 'v'='/usr/local/Cellar/vim/8.0.0459/bin/vim'

alias 'vconf'='vi ~/.dotfiles/settings/vim/.vimrc'

# Heroku stuff
alias 'hc'='heroku run rails c'

alias 'lac'='swiftlint autocorrect' # Lint Auto Correct


