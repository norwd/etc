#!/bin/sh
# shellcheck source=/dev/null

if [ -x "$(command -v brew)" ]
then
	_brew_shellenv_cache_file="${XDG_CONFIG_HOME:-${HOME}/.config}/profile.d/051-env-homebrew-shellenv-cache.sh"
	_brew_shellenv_cache_path="$(dirname "${_brew_shellenv_cache_file}")"
	_brew_shellenv_cache_base="$(basename "${_brew_shellenv_cache_file}")"

	if [ ! -f "${_brew_shellenv_cache_file}" ] || [ -n "$(find "${_brew_shellenv_cache_path}" -name "${_brew_shellenv_cache_base}" -mtime +1)" ]
	then
		brew shellenv > "${_brew_shellenv_cache_file}"

		if [ ! -x "${_brew_shellenv_cache_file}" ]
		then
			chmod +x "${_brew_shellenv_cache_file}"
		fi

		. "${_brew_shellenv_cache_file}"
	fi

	if [ -x "$(command -v bat)" ]
	then
		export HOMEBREW_BAT="1"
	fi
fi
