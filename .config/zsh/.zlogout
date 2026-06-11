#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

# Setup zlogout
for _zlogout in "${ZDOTDIR}/zlogout.d/"*.zsh
do [[ -r "${_zlogout}" ]] && source "${_zlogout}"
done
unset -v _zlogout
