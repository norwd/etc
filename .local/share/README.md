<!--
SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
SPDX-License-Identifier: Hippocratic-3.0-CL-ECO-LAW-MIL-SV
-->

# `XDG_DATA_HOME`

This contains non-configuration data files, analogous to `/usr/share`.
Similarly to `XDG_CACHE_HOME` this is mostly `.gitkeep` files,
but unlike the caches, these are functional.
The `./zsh/` and `./vim/` paths are designed with future gitmodules in mind,
although they are currently populated manually through `git clone`.
