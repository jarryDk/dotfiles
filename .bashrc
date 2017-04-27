#!/bin/bash

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return;;
esac

# the basics
: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}

# complete hostnames from this file
: ${HOSTFILE=~/.ssh/known_hosts}

# ----------------------------------------------------------------------
# PATH
# ----------------------------------------------------------------------

# we want the various sbins on the path along with /usr/local/bin
PATH="$PATH:/usr/local/sbin:/usr/sbin:/sbin"
PATH="/usr/local/bin:$PATH"

# put ~/bin first on PATH
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [[ -f "${HOME}/.bash_profile" ]]; then
	# shellcheck source=/dev/null
	source "${HOME}/.bash_profile"
fi
