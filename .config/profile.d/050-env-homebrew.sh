#!/bin/sh

if [ -x "$(command -v brew)" ]
then
	eval "$(brew shellenv)" # zshellcheck disable=ZC1046,ZC1098

	if [ -x "$(command -v bat)" ]
	then
		export HOMEBREW_BAT="1"
	fi
fi
