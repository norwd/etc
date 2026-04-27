#!/usr/bin/env zsh
# shellcheck source=/dev/null
# shellcheck disable=SC3010 # (warning): In POSIX sh, [[ ]] is undefined.
# shellcheck disable=SC3046 # (warning): In POSIX sh, 'source' in place of '.' is undefined.
# shellcheck disable=SC3051 # (warning): In POSIX sh, 'source' in place of '.' is undefined.

# Setup login shell
source ~/.config/profile

# Setup zsh specific sub-configs
for _zshrc_path in "${XDG_CONFIG_HOME:-${HOME}/.config}/zsh/"*.zsh
do
	[[ -r "${_zshrc_path}" ]] && source "${_zshrc_path}"
done

unset -v _zshrc
