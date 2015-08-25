#RoR
alias bu='bundle'
alias es='rails s' #Execute Server
alias ei='irb' #Execute IRB
alias ec='rails c' #Execute Console
alias ecs='rails c --sandbox' #Execute Console Sandbox
alias ects='RAILS_ENV=test rails console -s' ##Execute Console Test Sandbox
alias be='bundle exec'
alias grr='grunt'
alias grl='grunt release'
alias dbm='bundle exec rake db:migrate'
alias dbd='bundle exec rake db:drop'
alias dbc='bundle exec rake db:create'
alias tdbm='RAILS_ENV=test bundle exec rake db:migrate'
alias tdbd='RAILS_ENV=test bundle exec rake db:drop'
alias tdbc='RAILS_ENV=test bundle exec rake db:create'
alias dbreload='dbd && dbc && dbm && tdbd && tdbc && tdbm && bundle exec rake db:seed' # Database from scratch
alias gll='guard -P livereload' # Guard Live Reload
alias rs='bundle exec rspec'
alias rss='bundle exec rspec spec/'
alias rjs='bundle exec rake karma:run'
alias rbbg='ruby black_box_gatekeeper.rb' #Run Black Box Gatekeeper
alias zs='zeus start'
alias zz='rm .zeus.sock & zeus start' #Zrestart Zeus
alias zr='zeus rspec spec'
alias zrf='zeus rspec' #Zeus RSpec file
alias zc='zeus console'
alias zcs='zeus console --sandbox'
alias sc='shelly console -c'
alias scv='shelly console -c vatrel'
alias scs='shelly console --cloud slacker'
alias sss='shelly ssh -s app3 -c'
alias rds='redis-server'
alias sq='sidekiq'
alias mss='mysql.server start' #MySql Start
alias msst='mysql.server stop' #MySql Stop
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log' # Postgres
alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start' # Postgres Start
alias pgst='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop' # Postgres Stop
alias pss='python -m SimpleHTTPServer' #Python Server Start
alias ees='elasticsearch' # Execute Elastic Search
alias rst='rvmsudo tunnels'
alias gr='grep --color'
alias s='subl .' #Sublime Open
alias glp='gulp'
alias glpr='coffeegulp release'
alias frs='foreman start'

#Git
alias g='git status'
alias gp='git push'
alias gpsh='git push shelly master'
alias gpl='git pull'
alias gst='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'
alias gsp='git stash pop'
alias ga='git add'
alias gaa='git add . -A' #Git Add All
alias gd='git diff'
alias gds='git diff --staged'
alias gdl='git diff HEAD~1'
alias gpshp='git push shelly master' # deploy to shelly production
alias gpshs='git push shelly-staging develop:master' # deploy to shelly staging
alias gpr='git remote update --prune' # Git Prune: update list of remote branches
alias gbr='git branch -a' #Git Branches
alias gms='git checkout master' # Git Masta
alias gca='git commit --amend'
alias grs='git reset --soft HEAD~1'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

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
alias iw='cd ~/Programming/iOS/' #iWork
alias vw='cd ~/Programming/Ruby/Vatrel' #Vatrel Work
alias sw='cd ~/Programming/Ruby/safe-backend' #safe work
alias frp='~/Programming/iOS/obj_c/learning_frp' #Functional Reactive Programming
alias pww='cd ~/Programming/JavaScript/phaser-io' #phaser work work
alias amw='~/Programming/iOS/cordova/ArmyOfMushrooms/js_src' #army mushrooms work

alias fw='cd ~/Programming/JavaScript/phaser-io/flappyDot' #flappy work
alias sbw='cd ~/Programming/Ruby/railsy/Siorbackend' #siorb backend work
alias aw='cd ~/Programming/JavaScript/Angular' #angular work
alias s++='cd ~/Programming/sezamy' #SeSame Work
alias ssw='cd ~/Programming/iOS/obj_c/SuperSlurper' #Super Slurper work
alias tbd='cd ~/Programming/iOS/obj_c/TwoBlackDots' #Two Black Dots work
alias nrm='cd ~/Programming/JavaScript/normit' #normit work


alias pw='cd ~/Programming' #programming work
alias nyan='nc -v nyancat.dakko.us 23' #nyan cat

alias tte='termit pl en' # Translate to Polish
alias ttp='termit en pl' # Translate to English
alias ttf='termit en fr' # Translate to Francuski
alias safe='termit de en' # Translate german variables...

#arduino
alias readArd='tail -f /dev/tty.usbmodem1411'

  #overrides
  alias grep='grep --color=auto'
  alias mkdir='mkdir -pv'

alias 'aliases'='cat ~/.dotfiles/settings/shell/aliases.sh' #display aliases
alias 'cleanX'='cd ~/Library/Developer/Xcode/DerivedData' # clean xcode logs when crashing too much

function trr() { # Git Create Branch
  termit en tr "$*" -t
}

# IONIC

alias 'iob'='ionic build ios'
alias 'ios'='ionic serve'
alias 'ioe'='ionic emulate ios --livereload --consolelogs --serverlogs'
alias 'iod'='ionic run ios --livereload --consolelogs --serverlogs --device'
alias 'iii'='ionic build ios && ionic run ios'

