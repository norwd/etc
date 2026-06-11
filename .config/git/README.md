<!--
Copyright (C) 2026 Y. Meyer-Norwood
This file is distributed under the Hippocratic License 3.0 (HL3-CL-ECO-LAW-MIL-SV)
-->

# `XDG_CONFIG_HOME/git/`

Git naitively supports the XDG base directory standard[^git-config-file-paths],
which allows this directory to contain all the git files that would otherwise be in `~`.

[^git-config-file-paths]: https://git-scm.com/docs/git-config#Documentation/git-config.txt-XDGCONFIGHOMEgitconfig

The primary of these is of course `$XDG_CONFIG_HOME/git/config`,
the alternate of `~/.gitconfig`,
which indeed does live here,
however,
to allow greater granualarity in git configs for
different hosts,
different user identities,
different signing keys,
etc,
I also have created `$XDG_CONFIG_HOME/git/config.d/`.
This deserves some explaination,
as this is not standard behaviour in git and as such behaves in an unexpected way.

## `XDG_CONFIG_HOME/git/config.d/`

Git doesn't support complex logic or behaviour in the config files,
but it does support including external files depending on certain rules[^git-config-conditional-includes]
The main one here is the ability to include different files based on the remote url of the repository[^git-config-has-remote-url].
This allows different `user.email`, `user.signingkey`, and `credential.*.helper` settings for GitHub and CodeBerg.
It also allows me to have my work email set automatically in work repos,
which helps solve the anoying issue of accidentally commiting with the wrong email and having the push rejected.

[^git-config-conditional-includes]: https://git-scm.com/docs/git-config#_conditional_includes
[^git-config-has-remote-url]: https://git-scm.com/docs/git-config#Documentation/git-config.txt-hasconfigremoteurl

One small wrinkle though, is that the detection can be rather finicky,
as there are several different patterns that the remote url can take,
and the regex rules are not very expresive,
Necessitating all known patterns to have a separate `[includeIf ...]` lines.
You also cannot have wildcard path matching for including multiple files all at once.
The solution for both of these that I've settled on is to separate detection and configuration.
The `$XDG_CONFIG_HOME/git/config.d/` directory contains two kinds of subconfigs:
1. Leaf configs, e.g. `aliases` which doesn't source any more files.
1. Gatekeepers, e.g. `github` which only detects if the current repo is hosted on GitHub,
   and sources an entry point subsubconfig.
   There is a similar set up for Codeberg, and this will likely expand as I continue to [give up github].

[give up github]: https://GiveUpGitHub.org

## `XDG_CONFIG_HOME/git/config.d/*.d/default`

Each of the gatekeeper configs is already repetetive and verbose enough as it is,
so instead of sourcing all the subsubconfigs again and again for every `[includeIf ...]`,
all that is offloaded to a `[scope].d/default` file,
which can itself include further files if necessary,
or just set the `user.email` and nothing else.
This isn't as flexible as with my shell configs,
there are no forloops,
adding a file doesn't automattically get dettected.
But unlike the shell configs,
my git configs are less machine variable,
and vary less over time.
So that level of flexiblity isn't needed,
and I rarely need to add git config that doesn't clearly belong in one of the existing files.
