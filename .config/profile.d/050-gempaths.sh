#!/bin/sh
# shellcheck disable=SC2154

if [ -x "$(command -v ruby)" ] && [ -x "$(command -v gem)" ]
then
  export PATH="${PATH}:$(ruby -r rubygems -e 'puts Gem.user_dir')/bin"
fi

