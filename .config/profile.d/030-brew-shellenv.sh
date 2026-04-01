#!/bin/sh

if [ -x "$(command -v brew)" ]
then
  # shellcheck source=/dev/null
  eval "$(brew shellenv)"
fi
