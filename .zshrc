# Save command history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=2000
SAVEHIST=1000

# Do not beep on error
unsetopt BEEP

# Set prompt
PS1="%1~ %B%#%b "

# Talk to dotfiles repo
alias dotfiles='/usr/bin/git --git-dir="${HOME}/etc/" --work-tree="${HOME}"'

# Setup completion
USER_FPATH="${HOME}/.local/share/zsh/site-functions"

fpath=(${USER_FPATH} ${fpath})

[ ! -d "${USER_FPATH}" ] && mkdir -p "${USER_FPATH}"

[ -x "$(command -v gh)" ] && gh completion -s zsh > "${USER_FPATH}/_gh"

autoload -U compinit
compinit -i

export GPG_TTY=$(tty)

