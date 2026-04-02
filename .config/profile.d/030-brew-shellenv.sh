#!/bin/sh

if [ -x "$(command -v brew)" ]
then
	eval "$(brew shellenv)"
fi
