#!/usr/bin/env zsh

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: LicenseRef-Hippocratic-3.0-CL-ECO-LAW-MIL-SV
#

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

export HISTFILE="${XDG_STATE_HOME:-${HOME}/.local/state}/zsh/history"
export HISTSIZE=2000
export SAVEHIST=1000
