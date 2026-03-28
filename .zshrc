# Do not beep on error
unsetopt BEEP

# Cure spelling
setopt CORRECT_ALL
setopt CORRECT
setopt DVORAK

# Navigation
setopt AUTO_CD

# Import aliases
source ~/.config/profile/aliases.sh

# Set XDG directories
source ~/.config/profile/xdg-base-dirs.sh

# Save command history
export HISTFILE="${XDG_STATE_HOME}/zsh/history"
export HISTSIZE=2000
export SAVEHIST=1000

# Set prompt
PS1="%1~ %B%#%b "

# Setup completion
setopt COMPLETE_ALIASES
setopt AUTO_LIST
setopt AUTO_MENU

[ -x "$(command -v thefuck)" ] && source <(thefuck --alias)
[ -x "$(command -v brew)"    ] && source <(brew shellenv)
[ -x "$(command -v fzf)"     ] && source <(fzf --zsh)
[ -x "$(command -v pkgfile)" ] && source /usr/share/doc/pkgfile/command-not-found.zsh

fpath=("${XDG_DATA_HOME}/zsh/site-functions" $fpath)

function create-site-functions() {
	if [ -x "$(command -v $1)" ] && [ ! -f "${HOMEBREW_PREFIX}/share/zsh/site-functions/_$1" ] && [ ! -f "${XDG_DATA_HOME}/zsh/site-functions/_$1" ]
	then
		$@ > "${XDG_DATA_HOME}/zsh/site-functions/_$1"
	fi
}

create-site-functions cheat --completion zsh
create-site-functions hexyl --completion zsh
create-site-functions gh completion --shell zsh
create-site-functions bat --completion zsh

unfunction create-site-functions

autoload -Uz compinit
compinit -i -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"

zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}/zsh/zcompcache"

# Misc
export GPG_TTY=$(tty)
