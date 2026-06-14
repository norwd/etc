#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

# Setup zshrc
for _zshrc in "${ZDOTDIR}/zshrc.d/"*.zsh
do [[ -r "${_zshrc}" ]] && source "${_zshrc}"
done
unset -v _zshrc
