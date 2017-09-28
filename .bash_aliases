# Aliases
alias ls='ls -G'
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

gfixup() {
  set -x
  git add --all
  git commit --fixup=$(git log --oneline | head -1 | cut -d ' ' -f 1)
  git rebase --interactive HEAD~2 --autosquash
  set +x

  local branch_name=$(git symbolic-ref -q HEAD)
  branch_name=${branch_name##refs/heads/}
  branch_name=${branch_name:-HEAD}

  echo 'Previous commit fixed up.'
  echo 'To update a previously pushed branch, run:'
  echo "    git push origin $branch_name -f"
}

gitupdatefork() {
  if [[ "$#" -ne 1 ]]; then
    echo "Usage: ${FUNCNAME[0]} DEFAULT_BRANCH"
    # exit current function
    kill -INT $$
  fi
  local DEFAULT_BRANCH="$1"
  git checkout "$DEFAULT_BRANCH"
  git fetch upstream "$DEFAULT_BRANCH"
  git merge upstream/"$DEFAULT_BRANCH"
  git push origin "$DEFAULT_BRANCH"
}
