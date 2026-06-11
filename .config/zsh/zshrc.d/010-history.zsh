#!/usr/bin/env zsh

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

export HISTFILE="${XDG_STATE_HOME:-${HOME}/.local/state}/zsh/history"
export HISTSIZE=2000
export SAVEHIST=1000
