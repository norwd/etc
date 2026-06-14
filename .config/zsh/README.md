<!--
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
# SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
# SPDX-License-Identifier: Hippocratic-3.0-CL-ECO-LAW-MIL-SV.txt
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
