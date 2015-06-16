# Aliases
alias ls='ls --color=auto'
alias l='ls -F'
alias la='ls -aF'
alias ll='ls -alh'
alias clear='clear && pwd && echo'
alias cls='clear && l'
alias cla='clear && la'
alias cll='clear && ll'
alias cl='cll'

alias please='sudo $(history -p !!)'

# Others
alias chrome="open -a /Applications/Google\ Chrome.app/"  # Usage: "chrome myfile.html"
alias grep="grep --color"

# Change PS1
alias ps1short='export PS1="\W \$ "'
alias ps1long='export PS1="[\t][\u@\h:\w] \$ "'

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
alias gdiff='git diff --color'
alias gtree='git log --graph --pretty=oneline --abbrev-commit'
alias gpushorigin='gpush origin'
alias gpullorigin='gpull origin'

