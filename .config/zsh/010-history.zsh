#!/usr/bin/env zsh

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

export HISTFILE="${XDG_STATE_HOME:-${HOME}/.local/state}/zsh/history"
export HISTSIZE=2000
export SAVEHIST=1000
