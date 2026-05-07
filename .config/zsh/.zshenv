#!/usr/bin/env zsh
# shellcheck source=/dev/null
# shellcheck disable=SC3046 # (warning): In POSIX sh, 'source' in place of '.' is undefined.
# shellcheck disable=SC3051 # (warning): In POSIX sh, 'source' in place of '.' is undefined.

# Setup zdotdir (all other zsh configs depend on this)
export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh/"

# Setup zshenv
for _zshenv in "${ZDOTDIR}/zshenv.d/"*.zsh # zshellcheck disable=ZC1040
do [ -r "${_zshenv}" ] && . "${_zshenv}"
done
unset -v _zshenv
