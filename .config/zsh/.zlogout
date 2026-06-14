#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: HL3-CL-ECO-LAW-MIL-SV
#

# Setup zlogout
for _zlogout in "${ZDOTDIR}/zlogout.d/"*.zsh
do [[ -r "${_zlogout}" ]] && source "${_zlogout}"
done
unset -v _zlogout
