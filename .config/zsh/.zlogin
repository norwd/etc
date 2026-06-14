#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: Hippocratic-3.0-CL-ECO-LAW-MIL-SV.txt
#

# Setup zlogin
for _zlogin in "${ZDOTDIR}/zlogin.d/"*.zsh
do [[ -r "${_zlogin}" ]] && source "${_zlogin}"
done
unset -v _zlogin
