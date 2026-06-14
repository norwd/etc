#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

if [[ -r "${HOMEBREW_PREFIX}/share/zsh-test-runner/ztr.zsh" ]]
then
	source "${HOMEBREW_PREFIX}/share/zsh-test-runner/ztr.zsh"
	export FPATH="${HOMEBREW_PREFIX}/share/zsh-test-runner:${FPATH}"
fi
