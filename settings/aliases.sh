#RoR
alias bu='bundle'
alias es='rails s' #Execute Server
alias ec='rails c' #Execute Console
alias ecs='rails c --sandbox' #Execute Console Sandbox
alias ects='RAILS_ENV=test rails console -s' ##Execute Console Test Sandbox
alias be='bundle exec'
alias rs='rspec'
alias zs='zeus start'
alias zec='zeus console'
alias zecs='zeus console --sandbox'
alias rw='cd ~/Programming/owf_ekobilet'

alias eed1='redis-server /usr/local/etc/redis.conf && rvmsudo tunnels' ##Execute EkoBilet Development I
alias eed2='QUEUES=* bundle exec rake environment resque:work' #Execute EkoBilet Development II
alias eed3='rake resque:scheduler' #Execute EkoBilet Development III
alias ep='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start' # Execute Postgres
alias mss='mysql.server start' #MySql Start
alias so='subl .' #Sublime Open

#Git
alias g='git status'
alias gs='git status'
alias gp='git push'
alias ga='git add'
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
  #overrides
  alias grep='grep --color=auto'
  alias mkdir='mkdir -pv'