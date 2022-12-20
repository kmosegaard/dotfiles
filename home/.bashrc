#
# ~/.bashrc
#

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# python tools e.g. greg
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# dotnet
#export DOTNET_ROOT=$HOME/.dotnet
#if [ -d "$HOME/.dotnet" ] ; then
#    PATH="$HOME/.dotnet:$PATH"
#fi

# import aliases
test -s ~/.bash_aliases && . ~/.bash_aliases || true

# nnn
export NNN_PLUG='f:fzopen'

# cvs
export CVS_RSH='ssh'

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

