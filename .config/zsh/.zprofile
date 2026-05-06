#!/usr/bin/env zsh# shellcheck source=/dev/null
# shellcheck disable=SC3046 # (warning): In POSIX sh, 'source' in place of '.' is undefined.
# shellcheck disable=SC3051 # (warning): In POSIX sh, 'source' in place of '.' is undefined.

# Disable `~/.zsh_sessions/`, must be in `~/.zprofile`
export SHELL_SESSIONS_DISABLE=1

# Setup login shell
source "${XDG_CONFIG_HOME:-${HOME}/.config}/profile"
