#!/usr/bin/env zsh
# shellcheck source=/dev/null
# shellcheck disable=SC3046 # (warning): In POSIX sh, 'source' in place of '.' is undefined.
# shellcheck disable=SC3051 # (warning): In POSIX sh, 'source' in place of '.' is undefined.

# Setup profile
source "${XDG_CONFIG_HOME:-${HOME}/.config}/profile"

# Setup zprofile
for _zprofile in "${ZDOTDIR}/zprofile.d/"*.zsh # zshellcheck disable=ZC1040
do [ -r "${_zprofile}" ] && . "${_zprofile}"
done
unset -v _zprofile
