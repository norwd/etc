#!/bin/sh

if [ -x "$(command -v brew)" ]
then
	_brew_shellenv_cache_file="${XDG_CONFIG_HOME:-${HOME}/.config}/profile.d/051-env-homebrew-shellenv-cache.sh"

	if [ ! -f "${_brew_shellenv_cache_file}" ] || [ -n "$(find "${XDG_CONFIG_HOME:-${HOME}/.config}" -name "$(basename "${_brew_shellenv_cache_file}")" -mtime +1)" ]
	then
		brew shellenv > "${_brew_shellenv_cache_file}"
	fi

	. "${_brew_shellenv_cache_file}"

	if [ -x "$(command -v bat)" ]
	then
		export HOMEBREW_BAT="1"
	fi
fi
