#!/usr/bin/env zsh

# Setup zshrc
for _zshrc in "${ZDOTDIR}/zshrc.d/"*.zsh
do [[ -r "${_zshrc}" ]] && source "${_zshrc}" # shellcheck source=/dev/null
done
unset -v _zshrc
