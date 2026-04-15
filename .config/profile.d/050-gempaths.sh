#!/bin/sh

if [ -x "$(command -v ruby)" ] && [ -x "$(command -v gem)" ]
then
	# shellcheck disable=SC2155
	export PATH="${PATH}:$(ruby -r rubygems -e 'puts Gem.user_dir')/bin"
fi
