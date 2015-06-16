# If non-interactive dont do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.local_bashrc ]; then
    . ~/.local_bashrc
fi

export PS1="\W \$ "
# export PS1="[\t][\u@\h:\w] \$ "
# export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\u \[$(tput setaf 6)\]\W \$ \[$(tput sgr0)\]"

export PATH=$PATH:/usr/local/bin:/usr/bin:~/bin

export EDITOR=/usr/bin/vim

export PYTHONSTARTUP=~/.pythonrc
