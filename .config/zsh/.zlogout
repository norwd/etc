#!/usr/bin/env zsh

# Setup zlogout
for _zlogout in "${ZDOTDIR}/zlogout.d/"*.zsh
do [[ -r "${_zlogout}" ]] && source "${_zlogout}" # shellcheck source=/dev/null
done
unset -v _zlogout
