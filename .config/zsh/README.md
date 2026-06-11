<!--
# Copyright (C) 2026 Y. Meyer-Norwood
# This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
-->

# `ZDOTDIR`

This is home to my Zsh configs,
following a brodly similar layout to ~/.config/profile.d/,
which this also sources.
Since Zsh doesn't support changing the name of the startup files,
only their location,
these remain hidden dotfiles.
Each "cannonical" dotfile is just a slim wrapper that sources subscripts,
each from the respective `foo.d` directory,
`.zshenv` sources `zshenv.d/*.zsh`,
`.zshrc` sources `zshrc.d/*.zsh`,
`.zlogout` sources `zlogout.d/*.zsh`,
etc...
