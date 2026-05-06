#!/usr/bin/env zsh
# shellcheck source=/dev/null
# shellcheck disable=SC3010 # (warning): In POSIX sh, [[ ]] is undefined.
# shellcheck disable=SC3046 # (warning): In POSIX sh, 'source' in place of '.' is undefined.
# shellcheck disable=SC3051 # (warning): In POSIX sh, 'source' in place of '.' is undefined.

# Setup zsh specific sub-configs
for _zshrc_path in "${XDG_CONFIG_HOME:-${HOME}/.config}/zshrc/"*.zshrc
do
	if [[ -r "${_zshrc_path}" ]]
	then
		source "${_zshrc_path}"
	fi
done
unset -v _zshrc
