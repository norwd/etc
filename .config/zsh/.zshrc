#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: HL3-CL-ECO-LAW-MIL-SV
#

# Setup zshrc
for _zshrc in "${ZDOTDIR}/zshrc.d/"*.zsh
do [[ -r "${_zshrc}" ]] && source "${_zshrc}"
done
unset -v _zshrc
