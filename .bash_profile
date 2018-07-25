export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias python='python3'
alias python2='/usr/bin/python2.7'

# Simple listing commands.
alias ls='ls -lahG'
alias ll='ls'


# Simple shortcuts.
alias tt='clear; composer test;'
alias coco='cd ~/Code'
alias dbcon='mysql -uroot -psecret'
alias dbstart='sudo brew services start mysql'
alias dbstop='sudo brew services stop mysql'

#  Stop development with Valet.
alias devstop='dbstop;valet stop;'
alias devstart='dbstart;valet start;'

# Typo protectors for the precious 'artisan' command.
alias art='artisan';
alias ar='artisan';
alias arti='artisan';

# Git-related shortcuts.
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias grao='git remote add origin'
alias gb='git branch -a'
alias gcb='git checkout -b'

# Update the docs within gh-pages branch.
alias updateDocs='git subtree push --prefix docs/dist/ origin gh-pages'


# Laravel-specific shortcuts.
alias artisan='php artisan'
alias migrate='php artisan migrate'
alias migrate:rollback='php artisan migrate:rollback'
alias migrate:reset='php artisan migrate:reset'
alias migref='php artisan migrate:refresh'
alias mamig='php artisan make:migration'
alias mareq='php artisan make:request'
alias mamod='php artisan make:model'

# Get a shell within a running container with its name.
function container-connect {
  docker exec -it "$1" /bin/sh
}
