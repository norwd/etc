# Where user-specific configurations should be written (analogous to /etc).
export XDG_CONFIG_HOME="$HOME/.config"

# Where user-specific non-essential (cached) data should be written (analogous to /var/cache).
export XDG_CACHE_HOME="$HOME/.cache"

# Where user-specific data files should be written (analogous to /usr/share).
export XDG_DATA_HOME="$HOME/.local/share"

# Where user-specific state files should be written (analogous to /var/lib).
export XDG_STATE_HOME="$HOME/.local/state"

# Ensure these directories exist
[ ! -d "${XGD_CONFIG_HOME}" ] && mkdir -p "${XDG_CONFIG_HOME}"
[ ! -d "${XGD_CACHE_HOME}" ] && mkdir -p "${XDG_CACHE_HOME}"
[ ! -d "${XGD_DATA_HOME}" ] && mkdir -p "${XDG_DATA_HOME}"
[ ! -d "${XGD_STATE_HOME}" ] && mkdir -p "${XDG_STATE_HOME}"

