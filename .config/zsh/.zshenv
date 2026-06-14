#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: LicenseRef-Hippocratic-3.0-CL-ECO-LAW-MIL-SV
#

# Setup zdotdir (all other zsh configs depend on this)
export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh/"

# Setup zshenv
for _zshenv in "${ZDOTDIR}/zshenv.d/"*.zsh
do [[ -r "${_zshenv}" ]] && source "${_zshenv}"
done
unset -v _zshenv
