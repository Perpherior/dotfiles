
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Functions
function git_commit_fancy() {
  git commit -m "$*"
}

# Showing current branch

function parse_git_dirty {
  [[ $(git status 2> /dev/null \
  | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null \
  | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

export PS1='\[\033[37m\]\w$(parse_git_branch)$\[\033[0m\] '
shopt -s cdspell

# Copy SSH Key to Clipboard
function keys() {
  [[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub | pbcopy
  echo "SSH Key copied to clipboard!"
}

alias keys=keys

# Alias
alias rdm='rake db:migrate db:test:prepare'
alias rdms='rake db:migrate:status'
alias rspec='bundle exec rspec'
alias rdr='rake db:rollback'

alias oo='open .'
alias ..='cd ..'
alias s='bundle exec rails s'

# psql
alias psql\:start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias psql\:stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias psql\:restart="brew services restart postgresql"

alias gc=git_commit_fancy
alias gph='git push'
alias gp='git pull'
alias gphm='git push heroku master'
alias dokku='ssh root@perpherior.com'
alias rspec='bundle exec rspec'

alias os='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias bnc='(bundle check || bundle install --path vendor/bundle)'
alias be='bundle exec'
alias fs='foreman start -f'
alias dc='docker-compose run web'
alias up='docker-compose up'
alias dcb='docker-compose build'
alias i='irb -Ilib -rgifter_hub'
