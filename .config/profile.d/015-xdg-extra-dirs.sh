#!/bin/sh

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: Hippocratic-3.0-CL-ECO-LAW-MIL-SV
#

# Where user-specific executable files should be written (analogous to /usr/bin) [NON-STANDARD].
export XDG_BIN_HOME="${XDG_BIN_HOME:-${HOME}/.local/bin}"
export PATH="${PATH}:${XDG_BIN_HOME}"
