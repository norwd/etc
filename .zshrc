# Do not beep on error
unsetopt BEEP

# Import aliases
source ~/.config/profile/aliases.sh

# Save command history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=2000
SAVEHIST=1000

# Set prompt
PS1="%1~ %B%#%b "

# Setup completion
USER_FPATH="${HOME}/.local/share/zsh/site-functions"

fpath=(${USER_FPATH} ${fpath})

[ ! -d "${USER_FPATH}" ] && mkdir -p "${USER_FPATH}"

[ -x "$(command -v gh)" ] && [ ! -f "${USER_FPATH}/_gh" ] && gh completion -s zsh > "${USER_FPATH}/_gh"

autoload -U compinit
compinit -i

export GPG_TTY=$(tty)

[ -x "$(command -v thefuck)" ] && eval "$(thefuck --alias)"

