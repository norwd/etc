#!/usr/bin/env zsh
# shellcheck source=/dev/null

# Setup zshrc
for _zshrc in "${ZDOTDIR}/zshrc.d/"*.zsh
do [[ -r "${_zshrc}" ]] && source "${_zshrc}"
done
unset -v _zshrc
