#!/bin/sh

if [ -x "$(command -v brew)" ]
then
	eval "$(brew shellenv)"

	if [ -x "$(command -v bat)" ]
	then
		export HOMEBREW_BAT="1"
	fi
fi
