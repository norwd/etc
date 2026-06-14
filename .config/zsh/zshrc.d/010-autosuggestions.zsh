#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: Hippocratic-3.0-CL-ECO-LAW-MIL-SV.txt
#

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

for _zsh_autosuggestions_path in "${HOMEBREW_PREFIX}/share/zsh-autosuggestions/zsh-autosuggestions.zsh" "${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/autosuggestions/zsh-autosuggestions.zsh"
do
	if [[ -r "${_zsh_autosuggestions_path}" ]]
	then
		source "${_zsh_autosuggestions_path}"
		break
	fi
done
