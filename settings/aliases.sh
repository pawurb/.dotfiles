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
alias z='zeus'
alias zs='zeus start'
alias zz='rm .zeus.sock & zeus start' #Zrestart Zeus
alias zr='zeus rspec'
alias zc='zeus console'
alias zcs='zeus console --sandbox'
alias rw='cd ~/Programming/owf_ekobilet'

#temporary
alias ta='zeus rspec spec/lib/carnet/event/availability_apec.rb spec/lib/api/ spec/lib/carnet/event/ spec/api/ ' #Test Api


alias eed1='mysql.server start && redis-server /usr/local/etc/redis.conf && rvmsudo tunnels' ##Execute EkoBilet Development I
alias eed2='QUEUES=* bundle exec rake environment resque:work' #Execute EkoBilet Development II
alias eed3='rake resque:scheduler' #Execute EkoBilet Development III
alias ep='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start' # Execute Postgres
alias mss='mysql.server start' #MySql Start
#alias subl='sublime'
alias so='subl .' #Sublime Open

#Git
alias g='git status'
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gst='git stash'
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
alias matrix='$BASH_CONFIG_DIR/settings/scripts/matrix.sh'
alias nyan='telnet miku.acm.uiuc.edu'

alias tte='ruby $BASH_SCRIPTS/translate.rb auto en' # Translate to Polish
alias ttp='ruby $BASH_SCRIPTS/translate.rb auto pl' # Translate to English
alias tts='ruby $BASH_SCRIPTS/translate.rb auto sk' # Translate to Słowacja
alias ttf='ruby $BASH_SCRIPTS/translate.rb auto fr' # Translate to Francuski

alias translate='ruby $BASH_SCRIPTS/translate.rb' # Custom translate [source, target, text]
alias tr='translate'

  #overrides
  alias grep='grep --color=auto'
  alias mkdir='mkdir -pv'

