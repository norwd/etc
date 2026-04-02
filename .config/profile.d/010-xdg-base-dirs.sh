#!/bin/sh

# Where user-specific configurations should be written (analogous to /etc).
export XDG_CONFIG_HOME="${HOME}/.config"

# Where user-specific non-essential (cached) data should be written (analogous to /var/cache).
export XDG_CACHE_HOME="${HOME}/.cache"

# Where user-specific data files should be written (analogous to /usr/share).
export XDG_DATA_HOME="${HOME}/.local/share"

# Where user-specific state files should be written (analogous to /var/lib).
export XDG_STATE_HOME="${HOME}/.local/state"

# Hack XDG support where not already automatic
# See also: https://wiki.archlinux.org/title/XDG_Base_Directory
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export W3M_DIR="${XDG_STATE_HOME}/w3m"
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
export GNUPGHOME="${XDG_CONFIG_HOME}/gnupg"
export NUGET_PACKAGES="${XDG_CACHE_HOME}/NuGetPackages"
export PYTHON_HISTORY="${XDG_STATE_HOME}/python_history"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export AWS_CLI_HISTORY_FILE="${XDG_STATE_HOME}/aws/history.db"
export INPUTRC="${XDG_CONFIG_HOME}/readline/inputrc"
export XINITRC="${XDG_CONFIG_HOME}/X11/xinitrc"
export XSERVERRC="${XDG_CONFIG_HOME}/X11/xserverrc"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
