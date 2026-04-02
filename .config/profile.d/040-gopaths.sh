#!/bin/sh
# shellcheck disable=SC2154

export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"

export PATH="${PATH}:${GOPATH}/bin"
