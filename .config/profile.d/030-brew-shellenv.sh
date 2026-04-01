#!/bin/sh

if [ -x "$(command -v brew)" ]
then
  source <(brew shellenv)
fi
