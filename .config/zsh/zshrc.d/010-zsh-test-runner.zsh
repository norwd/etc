#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: HL3-CL-ECO-LAW-MIL-SV
#

if [[ -r "${HOMEBREW_PREFIX}/share/zsh-test-runner/ztr.zsh" ]]
then
	source "${HOMEBREW_PREFIX}/share/zsh-test-runner/ztr.zsh"
	export FPATH="${HOMEBREW_PREFIX}/share/zsh-test-runner:${FPATH}"
fi
