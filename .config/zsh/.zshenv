#!/usr/bin/env zsh

# Setup zdotdir (all other zsh configs depend on this)
export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh/"

# Setup zshenv
for _zshenv in "${ZDOTDIR}/zshenv.d/"*.zsh
do [[ -r "${_zshenv}" ]] && source "${_zshenv}" # shellcheck source=/dev/null
done
unset -v _zshenv
