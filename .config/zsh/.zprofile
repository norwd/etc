#!/usr/bin/env zsh

# Setup profile
source "${XDG_CONFIG_HOME:-${HOME}/.config}/profile"

# Setup zprofile
for _zprofile in "${ZDOTDIR}/zprofile.d/"*.zsh
do [[ -r "${_zprofile}" ]] && source "${_zprofile}" # shellcheck source=/dev/null
done
unset -v _zprofile
