# Do not beep on error
unsetopt BEEP

# Import aliases
source ~/.config/profile/aliases.sh

# Set XDG directories
source ~/.config/profile/xdg-base-dirs.sh

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export W3M_DIR="${XDG_STATE_HOME}/w3m"
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export NUGET_PACKAGES="${XDG_CACHE_HOME}/NuGetPackages"

# Save command history
HISTFILE="${XDG_STATE_HOME}/zsh/history"
HISTSIZE=2000
SAVEHIST=1000

# Set prompt
PS1="%1~ %B%#%b "

# Setup completion
USER_FPATH="${XDG_DATA_HOME}/zsh/site-functions"

fpath=(${USER_FPATH} ${fpath})

[ ! -d "${USER_FPATH}" ] && mkdir -p "${USER_FPATH}"

[ -x "$(command -v gh)" ] && [ ! -f "${USER_FPATH}/_gh" ] && gh completion -s zsh > "${USER_FPATH}/_gh"

autoload -U compinit
compinit -i

export GPG_TTY=$(tty)

[ -x "$(command -v thefuck)" ] && source <(thefuck --alias)
[ -x "$(command -v fzf)"     ] && source <(fzf --zsh)

