#!/bin/sh

#
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: HL3-CL-ECO-LAW-MIL-SV
#

export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export PATH="${PATH}:${GOPATH}/bin"
