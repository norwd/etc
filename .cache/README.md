<!--
SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
SPDX-License-Identifier: Hippocratic-3.0-CL-ECO-LAW-MIL-SV.txt
-->

# `XDG_CACHE_HOME`

This is where temporary files live, somewhat analogous to `/var/cache`,
but in the event I ever set `XDG_CONFIG_HOME` to `~/etc`, this would be likely be set to `~/tmp`.

No actual data is ever commited here,
the only contents in source control are various `.gitkeep` files[^cache-gitkeep-files].

[^cache-gitkeep-files]: This ensures that there is never a need to run `mkdir -p`
  when running a tool that for some reason doesn't create the dir itself.
  This isn't usually a problem, but not all tools respect `XDG_CACHE_HOME`
  and need to told to use this as the cache dir.
