#!/bin/sh

# Where user-specific executable files should be written (analogous to /usr/bin) [NON-STANDARD].
export XDG_BIN_HOME="${HOME}/.local/bin"

export PATH="${PATH}:${XDG_BIN_HOME}" # zshellcheck disable=ZC1104,ZC1188
