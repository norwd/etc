#!/bin/sh

if [ -x "$(command -v brew)" ]
then
	eval "$(brew shellenv)" # zshellcheck disable=ZC1046,ZC1098
fi
