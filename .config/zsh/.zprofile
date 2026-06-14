#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: LicenseRef-Hippocratic-3.0-CL-ECO-LAW-MIL-SV
#

# Setup profile
source "${XDG_CONFIG_HOME:-${HOME}/.config}/profile"

# Setup zprofile
for _zprofile in "${ZDOTDIR}/zprofile.d/"*.zsh
do [[ -r "${_zprofile}" ]] && source "${_zprofile}"
done
unset -v _zprofile
