#!/usr/bin/env zsh
# shellcheck source=/dev/null

if [[ -r "${HOMEBREW_PREFIX}/share/zsh-test-runner/ztr.zsh" ]]
then
	source "${HOMEBREW_PREFIX}/share/zsh-test-runner/ztr.zsh"
	export FPATH="${HOMEBREW_PREFIX}/share/zsh-test-runner:${FPATH}"
fi
