#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

# Setup profile
source "${XDG_CONFIG_HOME:-${HOME}/.config}/profile"

# Setup zprofile
for _zprofile in "${ZDOTDIR}/zprofile.d/"*.zsh
do [[ -r "${_zprofile}" ]] && source "${_zprofile}"
done
unset -v _zprofile
