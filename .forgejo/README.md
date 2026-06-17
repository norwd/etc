<!--
SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <norwd@noreply.codeberg.org>
SPDX-FileCopyrightText: 2026 Y. Meyer-Norwood <106889957+norwd@users.noreply.github.com>
SPDX-License-Identifier: LicenseRef-Hippocratic-3.0-CL-ECO-LAW-MIL-SV
-->

# ~/etc - dotfiles, configs, settings

[![Hippocratic License HL3-CL-ECO-LAW-MIL-SV](https://img.shields.io/static/v1?label=Hippocratic%20License&message=HL3-CL-ECO-LAW-MIL-SV&labelColor=5e2751&color=bc8c3d)](https://firstdonoharm.dev/version/3/0/cl-eco-law-mil-sv.html)

## Usage

This repo is loosely based on the strategy described on the [Arch Linux Wiki][archwiki-dotfiles],
althought it is not Arch-specific, I also use this on MacOS.

### Installation

```shell
git clone --bare ssh://git@codeberg.org/norwd/etc.git ~/etc
git --git-dir="${HOME}/etc/" config --local status.showUntrackedFiles no
git --git-dir="${HOME}/etc/" --work-tree="${HOME}" checkout # re-run if necessary
```

Note, after installation, the `dotfiles` alias will be available instead of specifying the `--git-dir` flag.

```shell
dotfiles pull
dotfiles add ~/.config/vim/vimrc
dotfiles commit -m "Update vimrc"
dotfiles push
```

[archwiki-dotfiles]: https://wiki.archlinux.org/title/Dotfiles

### Troubleshooting

#### `gpg: unsafe permissions on homedir '~/.config/gnupg'`

This can happen because git doesn't clone the file permisions, other than the executable bit.
To correct the error, set read/write[^gnupg-homedir] for only the owner:

```shell
chown -R "$(whoami)" "$GNUPGHOME"
find "$GNUPGHOME" -type f -exec chmod 600 {} \;
find "$GNUPGHOME" -type d -exec chmod 700 {} \;
```

#### Using non-zsh shells

While everything in this repo assumes that zsh will be the only shell used,
other shells *should* work with minimal setup.

Just add the following to the end of ~/.profile or ~/.bash_profile:

```shell
. ~/.config/profile
```

[^gnupg-homedir]: Specifically, the directory should be set to `600`, and the files set to `700`.
  See also https://gist.github.com/oseme-techguy/bae2e309c084d93b75a9b25f49718f85

## Dependencies

### Required

Although designed to work out of the box on a freshly installed OS,
these dotfiles do require at least `git` and `zsh` to be installed.
On most POSIX systems[^vi-posix], `vim` should already be installed,
either as `vim` or sometimes as `vi`.

[^vi-posix]: The posix standard requires `vi`, but this is usually just a symlink to `vim`.
  See also https://pubs.opengroup.org/onlinepubs/9699919799.2016edition/utilities/vi.html

### Optional

In adition to the reqired dependencies,
there are some other tools that these dotfiles make use of or configure.
None of these are escential, but all are highly recommended.
Unlike other dotfile repos, these are not automatically installed.
This is because not all tools will be used on all installations,
there's no need to bring arcoss all the development tools onto a media machine,
similarly, there's no need to install media tools onto a development machine.
Any of the repos in these lists can be mixed and matched with these dotfiles.

The majority of these have not yet given up GitHub[^giveupgithub],
so I maintain CodeBerg mirrors of repositories that I frequently use.
See the https://codeberg.org/norwd-forks organisation for *some* of the non-required dependencies that I use with this repo.

[^giveupgithub]: GitHub is a proprietary, trade-secret system that is not Free and Open Souce Software (FOSS).
  I am deeply concerned about using a proprietary system like GitHub to develop my FOSS projects.
  ([See Software Freedom Conservancy's *Give Up  GitHub* site for details](https://GiveUpGitHub.org).)
