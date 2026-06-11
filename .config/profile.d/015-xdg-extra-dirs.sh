#!/bin/sh

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

# Where user-specific executable files should be written (analogous to /usr/bin) [NON-STANDARD].
export XDG_BIN_HOME="${XDG_BIN_HOME:-${HOME}/.local/bin}"
export PATH="${PATH}:${XDG_BIN_HOME}"
