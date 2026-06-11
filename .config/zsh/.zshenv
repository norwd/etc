#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

# Setup zdotdir (all other zsh configs depend on this)
export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh/"

# Setup zshenv
for _zshenv in "${ZDOTDIR}/zshenv.d/"*.zsh
do [[ -r "${_zshenv}" ]] && source "${_zshenv}"
done
unset -v _zshenv
