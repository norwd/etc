#!/usr/bin/env zsh
# shellcheck source=/dev/null
# shellcheck disable=SC3010 # (warning): In POSIX sh, [[ ]] is undefined.
# shellcheck disable=SC3046 # (warning): In POSIX sh, 'source' in place of '.' is undefined.
# shellcheck disable=SC3051 # (warning): In POSIX sh, 'source' in place of '.' is undefined.

# Setup zshrc
for _zshrc in "${ZDOTDIR}/zshrc.d/"*.zsh
do [[ -r "${_zshrc}" ]] && source "${_zshrc}"
done
unset -v _zshrc
