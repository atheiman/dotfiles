# Aliases
alias ll='ls -alhG'
alias la='ls -aF'
alias l='ls -F'
alias cls='clear ; pwd ; echo ; l ;'
alias cla='clear ; pwd ; echo ; la ;'
alias cll='clear ; pwd ; echo ; ll ;'
alias cl='cll'
alias please='sudo $(history -p !!)'

# Others
alias chrome="open -a /Applications/Google\ Chrome.app/"  # Usage: "chrome myfile.html"

# Change PS1
alias ps1long='export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\u@\H:\[$(tput setaf 6)\]\w \$ \[$(tput sgr0)\]"'
alias ps1short='export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\u \[$(tput setaf 6)\]\W \$ \[$(tput sgr0)\]"'

# OME
alias apconf='cd /as/conf/apache/local/webprod/'
alias www='sudo -H -u www bash -l'
alias acldups="setacl ; cat www-acl-* | cut -d' ' -f 1 | sort | uniq -c | sort -n ;"
alias apconf='cd /as/conf/apache/local/webprod/'

# Vagrant
alias vup='vagrant up'
alias vdestroy='vagrant destroy -f'
alias vssh='vagrant ssh'
alias vprovision='vagrant provision'
alias vreset='vagrant destroy -f ; vagrant up ;'
alias vstatus='vagrant status'
alias vhalt='vagrant halt'
alias vhelp='vagrant help'
alias vsuspend='vagrant suspend'

# Git
alias gbranch='git branch'
alias ghelp='git help'
alias ginit='git init'
alias gadd='git add'
alias gpush='git push'
alias gcommit='git commit'
alias gmerge='git merge'
alias gcheckout='git checkout'
alias gpull='git pull'
alias gstatus='git status'
alias gaddall='git add --all :/'
alias gclone='git clone'
alias gtree='git log --graph --pretty=oneline --abbrev-commit'
alias gpushorigin='gpush origin'
alias gpullorigin='gpull origin'

# Fab
alias fab='fab -f conf/fabfile.py'

