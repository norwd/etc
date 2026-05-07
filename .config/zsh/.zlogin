#!/usr/bin/env zsh

# Setup zlogin
for _zlogin in "${ZDOTDIR}/zlogin.d/"*.zsh
do [[ -r "${_zlogin}" ]] && source "${_zlogin}" # shellcheck source=/dev/null
done
unset -v _zlogin
