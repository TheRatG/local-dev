alias ..="cd .."
alias ...="cd ../.."

alias h='cd ~'
alias c='clear'

alias xoff='sudo phpdismod -s cli xdebug'
alias xon='sudo phpenmod -s cli xdebug'

alias xdebug="/usr/bin/php -dxdebug.mode=debug -dxdebug.client_port=9003 -dxdebug.client_host=debug -dxdebug.client_host=192.168.0.21"

# sudo apt install mlocate
#alias updatedb="sudo updatedb --prunepaths='/mnt'"