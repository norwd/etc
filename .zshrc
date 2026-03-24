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

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export W3M_DIR="${XDG_STATE_HOME}/w3m"
export WGETRC="${XDG_CONFIG_HOME}/wgetrc"
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export NUGET_PACKAGES="${XDG_CACHE_HOME}/NuGetPackages"
export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export PYTHON_HISTORY="${XDG_STATE_HOME}/python_history"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"

# Save command history
export HISTFILE="${XDG_STATE_HOME}/zsh/history"
export HISTSIZE=2000
export SAVEHIST=1000

# Set prompt
PS1="%1~ %B%#%b "

# Setup completion
autoload -U compinit
compinit -i -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"

zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}/zsh/zcompcache"

setopt AUTO_LIST
setopt AUTO_MENU

[ -x "$(command -v thefuck)" ] && source <(thefuck --alias)
[ -x "$(command -v fzf)"     ] && source <(fzf --zsh)
[ -x "$(command -v gh)"      ] && source <(gh completion --shell zsh)
[ -x "$(command -v pkgfile)" ] && source /usr/share/doc/pkgfile/command-not-found.zsh

# Misc
export GPG_TTY=$(tty)
