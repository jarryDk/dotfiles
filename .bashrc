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

if [[ -f "${HOME}/.bash_profile" ]]; then
	# shellcheck source=/dev/null
	source "${HOME}/.bash_profile"
fi
