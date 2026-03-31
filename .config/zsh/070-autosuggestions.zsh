#!/usr/bin/env zsh

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

for _zsh_autosuggestions_path in \
  "${HOMEBREW_PREFIX}/share/zsh-autosuggestions/zsh-autosuggestions.zsh" \
  "${XDG_DATA_HOME}/zsh/autosuggestions/zsh-autosuggestions.zsh"
do
  if [ -r "$_zsh_autosuggestions_path" ]
  then
    source "$_zsh_autosuggestions_path"
    break
  fi
done
