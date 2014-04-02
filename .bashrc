# If non-interactive dont do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\u@\H:\[$(tput setaf 6)\]\w ; \[$(tput sgr0)\]"

export PATH=$PATH:/usr/bin:/usr/local/bin:/as/bin:/usr/bin

export EDITOR=/usr/bin/vim

stty erase ^?
