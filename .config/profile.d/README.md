# `XDG_CONFIG_HOME/profile.d/`

This is my user-local equivalent to `/etc/profile.d/`,
these are invoked through `$XDG_CONFIG_HOME/profile` (analogous to `/etc/profile`).
As I primarily use Zsh, I also `source $XDG_CONFIG_HOME/profile` in my zshrc[^shellcheck].

To allow the files to depend on each other in a deterministic way,
each script is prefixed with a three digit number.
While not strictly enforced, I've settled on a loose convention of
`010-*.sh` for ultra basic environment variables that are needed basically everywhere else,
`050-*.sh` for tool specific environment variables and miscellaneous bootstrap commands,
`100-*.sh` for aliases and wrappers that expect tools to already be installed and configured.
I've also loosely used `xx5-*.sh` as a shorthand for subfiles.
Anything sharing a prefix number is assumed to be of equivalent priority and can
_in principle_
be sourced in any order.

[^shellcheck]: The `$XDG_CONFIG_HOME/profile.d/*.sh` scripts are strictly POSIX `sh(1)`.
  This neutrality allows the scripts to be called in both Zsh or Dash startup files.
