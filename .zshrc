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

