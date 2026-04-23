#!/bin/sh

if [ -x "$(command -v ruby)" ] && [ -x "$(command -v gem)" ]
then
	_ruby_gem_user_dir_bin="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin"
	if [ -d "${_ruby_gem_user_dir_bin}" ]
	then
		export PATH="${PATH}:${_ruby_gem_user_dir_bin}" # zshellcheck disable=ZC1188
	fi
fi
