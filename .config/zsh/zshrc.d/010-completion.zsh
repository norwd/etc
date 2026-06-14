#!/usr/bin/env zsh
# shellcheck source=/dev/null

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: LicenseRef-Hippocratic-3.0-CL-ECO-LAW-MIL-SV
#

setopt COMPLETE_ALIASES
setopt AUTO_LIST
setopt AUTO_MENU

[[ -x "$(command -v thefuck)" ]] && source <(thefuck --alias)
[[ -x "$(command -v fzf)"     ]] && source <(fzf --zsh)

FPATH="${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/site-functions:${FPATH}"

create-site-functions() {
	if [ ! -f "${HOMEBREW_PREFIX}/share/zsh/site-functions/_$1" ] && [ ! -f "${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/site-functions/_$1" ] && [ -x "$(command -v "$1")" ]
	then
		# shellcheck disable=SC2068
		$@ > "${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/site-functions/_$1"
	fi
}

create-site-functions cheat    --completion            zsh
create-site-functions hexyl    --completion            zsh
create-site-functions bat      --completion            zsh
create-site-functions gh         completion --shell    zsh
create-site-functions glow       completion            zsh
create-site-functions gum        completion            zsh
create-site-functions onefetch              --generate zsh

unfunction create-site-functions

autoload -Uz compinit
compinit -i -d "${XDG_CACHE_HOME:-${HOME}/.cache}/zsh/zcompdump-${ZSH_VERSION:-current}"

zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-${HOME}/.cache}/zsh/zcompcache"
