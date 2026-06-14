#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

# Setup zlogin
for _zlogin in "${ZDOTDIR}/zlogin.d/"*.zsh
do [[ -r "${_zlogin}" ]] && source "${_zlogin}"
done
unset -v _zlogin
