#!/bin/sh

if [ -x "$(command -v brew)" ]
then
  . <(brew shellenv)
fi
