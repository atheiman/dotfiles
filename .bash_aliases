# Aliases
alias ll='ls -alF'
alias la='ls -a'
alias l='ls -F'
alias cls='clear ; pwd ; echo "" ; l ;'
alias cla='clear ; pwd ; echo ; la ;'
alias cll='clear ; pwd ; echo ; ll ;'

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
