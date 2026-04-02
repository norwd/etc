#!/usr/bin/env zsh

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# shellcheck disable=SC2154
for _zsh_autosuggestions_path in \
	"${HOMEBREW_PREFIX}/share/zsh-autosuggestions/zsh-autosuggestions.zsh" \
	"${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/autosuggestions/zsh-autosuggestions.zsh"
do
	if [ -r "${_zsh_autosuggestions_path}" ]
	then
		# shellcheck source=/dev/null
		source "${_zsh_autosuggestions_path}"
		break
	fi
done
