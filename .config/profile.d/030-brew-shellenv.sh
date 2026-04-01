#!/bin/sh

if [ -x "$(command -v brew)" ]
then
  # shellcheck source=/dev/null
  . <(brew shellenv)
fi
