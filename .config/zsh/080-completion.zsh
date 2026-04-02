#!/usr/bin/env zsh
# shellcheck source=/dev/null

setopt COMPLETE_ALIASES
setopt AUTO_LIST
setopt AUTO_MENU

[[ -x "$(command -v thefuck)" ]] && source <(thefuck --alias)
[[ -x "$(command -v fzf)"     ]] && source <(fzf --zsh)

fpath+="${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/site-functions"

create-site-functions() {
	# shellcheck disable=SC2154
	if [ ! -f "${HOMEBREW_PREFIX}/share/zsh/site-functions/_$1"               ] &&
	   [ ! -f "${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/site-functions/_$1" ] &&
	   [   -x "$(command -v "$1")"                                            ]
	then
		# shellcheck disable=SC2068
		$@ > "${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/site-functions/_$1"
	fi
}

create-site-functions cheat --completion         zsh
create-site-functions hexyl --completion         zsh
create-site-functions bat   --completion         zsh
create-site-functions gh      completion --shell zsh

unfunction create-site-functions

autoload -Uz compinit
compinit -i -d "${XDG_CACHE_HOME:-${HOME}/.cache}/zsh/zcompdump-${ZSH_VERSION:-current}"

zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-${HOME}/.cache}/zsh/zcompcache"
