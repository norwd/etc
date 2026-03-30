#!/usr/bin/env zsh

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

for _zsh_autosuggestions in \
  "${HOMEBREW_PREFIX}/share/zsh-autosuggestions/zsh-autosuggestions.zsh" \
  "${XDG_DATA_HOME}/zsh/autosuggestions/zsh-autosuggestions.zsh"
do
  if [ -r "$_zsh_autosuggestions" ]
  then
    source "$_zsh_autosuggestions"
    break
  fi
done
