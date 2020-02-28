# silence MacOS Catalina zsh message on login
export BASH_SILENCE_DEPRECATION_WARNING=1

# If non-interactive dont do anything
case $- in
    *i*) ;;
      *) return;;
esac

export PS1="\W \$ "
# export PS1="[\t][\u@\h:\w] \$ "
# export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\u \[$(tput setaf 6)\]\W \$ \[$(tput sgr0)\]"

#export PATH=$PATH:/usr/local/bin:/usr/bin:~/bin
export PATH=~/bin:$PATH

if [ which rbenv ]; then eval "$(rbenv init -)"; fi
if [ which pyenv ]; then eval "$(pyenv init -)"; fi

export EDITOR="$(which vim)"
export PYTHONSTARTUP=~/.pythonrc

set -o vi

if [ -f /Users/austinheiman/.pyenv/shims/aws_completer ]; then
  complete -C '/Users/austinheiman/.pyenv/shims/aws_completer' aws
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

if [ -f ~/.local_bashrc ]; then
  . ~/.local_bashrc
fi

