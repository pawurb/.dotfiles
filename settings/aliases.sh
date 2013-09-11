#Confing

export BASH_SCRIPTS=$BASH_CONFIG_DIR/settings/scripts

#RoR
alias bu='bundle'
alias es='rails s' #Execute Server
alias ei='irb' #Execute IRB
alias ec='rails c' #Execute Console
alias ecs='rails c --sandbox' #Execute Console Sandbox
alias ects='RAILS_ENV=test rails console -s' ##Execute Console Test Sandbox
alias be='bundle exec'
alias rs='rspec'
alias rss='rspec spec/'
alias z='zeus'
alias zs='zeus start'
alias zz='rm .zeus.sock & zeus start' #Zrestart Zeus
alias zr='zeus rspec'
alias zc='zeus console'
alias zcs='zeus console --sandbox'
alias rw='cd ~/Programming/owf_ekobilet'


#Rails
alias ep='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start' # Execute Postgres
alias mss='mysql.server start' #MySql Start
alias so='subl .' #Sublime Open

  #Ekobilet
  # killall redis-server # stop redis
  alias rp="touch ~/Programming/owf_ekobilet/tmp/restart.txt" #Restart Pow
  alias eed1='mysql.server start && redis-server /usr/local/etc/redis.conf && rvmsudo tunnels' ##Execute EkoBilet Development I
  alias eed2='rvmsudo tunnels 192.168.123.104:443 192.168.123.104:80' ##II
  alias eed3='QUEUES=* bundle exec rake environment resque:work' #III
  alias eed4='rake resque:scheduler' #IV
  alias lab='ssh ekobilet@lab.ekobilet.pl' #EkoBilet staging
  alias el='tail -f ~/Programming/owf_ekobilet/log/development.log' #Ekobilet Logs
  alias elg='tail -f ~/Programming/owf_ekobilet/log/development.log | grep' #Ekobilet Logs Grep

  #temporary
  alias ta='zeus rspec spec/lib/carnet/event/availability_spec.rb spec/lib/api/ spec/lib/carnet/event/ spec/api/ ' #Test Api

#Git
alias g='git status'
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gst='git stash'
alias gstp='git stash pop'
alias gstd='git stash && git stash drop'
alias gsp='git stash pop'
alias ga='git add'
alias gaa='git add . -A' #Git Add All
alias gd='git diff'
alias gds='git diff --staged'

function gm() { #Git Message: commit staged and quote all args as message
    git commit -m "$*"
}

#Shell
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias pd='cd -' #Previous Directory
alias dd='echo $PWD' #Display Directory
alias la='ls -a' #List All
alias ll='ls -al' #Long List
alias h='history'
alias c='clear'
alias reload='source ~/.bashrc'
alias nyan='telnet miku.acm.uiuc.edu'

alias tte='termit pl en' # Translate to Polish
alias ttp='termit en pl' # Translate to English
alias tts='termit en sk' # Translate to Słowacja
alias ttf='termit en fr' # Translate to Francuski
alias tr='termit'

  #overrides
  alias grep='grep --color=auto'
  alias mkdir='mkdir -pv'

