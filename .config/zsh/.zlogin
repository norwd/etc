#!/usr/bin/env zsh
# shellcheck source=/dev/null

# Setup zlogin
for _zlogin in "${ZDOTDIR}/zlogin.d/"*.zsh
do [[ -r "${_zlogin}" ]] && source "${_zlogin}"
done
unset -v _zlogin
