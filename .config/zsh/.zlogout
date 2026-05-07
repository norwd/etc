#!/usr/bin/env zsh
# shellcheck source=/dev/null

# Setup zlogout
for _zlogout in "${ZDOTDIR}/zlogout.d/"*.zsh
do [[ -r "${_zlogout}" ]] && source "${_zlogout}"
done
unset -v _zlogout
