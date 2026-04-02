#!/usr/bin/env zsh
# shellcheck source=/dev/null

# Setup login shell
source ~/.config/profile

# Setup zsh specific sub-configs
for _zshrc_path in "${XDG_CONFIG_HOME:-${HOME}/.config}/zsh/"*.zsh
do
	[[ -r "${_zshrc_path}" ]] && source "${_zshrc_path}"
done
unset -v _zshrc

# Do not beep on error
unsetopt BEEP

# Setup spelling
setopt CORRECT_ALL
setopt CORRECT
setopt DVORAK

# Setup navigation
setopt AUTO_CD

# Setup history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

export HISTFILE="${XDG_STATE_HOME:-${HOME}/.local/state}/zsh/history"
export HISTSIZE=2000
export SAVEHIST=1000

# Setup prompt
PS1="%1~ %B%#%b "

# Misc
# shellcheck disable=SC2155
export GPG_TTY="$(tty)"
