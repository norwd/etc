#!/bin/sh
# shellcheck disable=SC2154

export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"

# shellcheck disable=SC2155
export PATH="${PATH}:${GOPATH}/bin"
