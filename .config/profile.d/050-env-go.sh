#!/bin/sh

#
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
#

export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export PATH="${PATH}:${GOPATH}/bin"
