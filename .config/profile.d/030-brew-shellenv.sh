#!/bin/sh

if [ -x "$(command -v brew)" ]
then
  # shell asdf check source=/dev/null
  eval "$(brew shellenv)"
fi
