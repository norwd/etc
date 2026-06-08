# `XDG_CONFIG_HOME`

This is where configuration files are stored, think of `/etc`,
which is where this repo gets its name[^why-is-xdg-config-home-not-customised].

[^why-is-xdg-config-home-not-customised]: The original idea was to set `XDG_CONFIG_HOME=~/etc`,
  and clone this repo in `~` without specifying the directory name.
  I later decided to leave the default value of `XDG_CONFIG_HOME=~/.config`.
  This has the primary benefit of broader compatibility,
  however, the actualy reason I changed the plan was to keep the rest of the XDG base directories in the same repo.
  The fact that this means my dotfiles repo isn't called `norwd/dotfiles` is just a nice side effect.
  I may at some point in the future change my mind and commit to `XDG_CONFIG_HOME=~/etc`,
  and indeed this repo is built with that flexability being built in.

Most of these subdirectories are either undocumented,
or are simply too self expanitory and/or bog-standard to bother,
however, some notable cusomisations are my various shell rc files.

## `XDG_CONFIG_HOME/profile.d/`

Since I treat `XDG_CONFIG_HOME` as an analogy of `/etc`,
I've replicated `/etc/profile`[^etc-profile] and `/etc/profile.d/` in `XDG_CONFIG_HOME`.
All this means is that `$XDG_CONFIG_HOME/profile` sources `$XDG_CONFIG_HOME/profile.d/*.sh`.
Which in turn means that I can take all the standard environment stuff
that I would otherwise have to duplicate in `~/.bashrc`,  `~/.kshrc`, and  `~/.zshrc`
and organise it as separate scripts in the `profile.d/` directory.
Then by just adding `source $XDG_CONFIG_HOME/profile` in the `.*shrc` file,
the rest of the startup can be specific to that shell.

[^etc-profile]: https://wiki.archlinux.org/title/Command-line_shell#/etc/profile

While not currently provided,
this strategy also allows `$HOME/.profile` to be linked to `$XDG_CONFIG_HOME/profile`.
This has mixed benfits depending on the desired login shell:
* `bash` - Only works in `--posix` mode, doesn't source Bash specific config files if specified.
* `dash` - Only execs `.profile` once on login, no subsequent invokations.[^dash-env-profile-hack]
* `ksh` - Works correctly.
* `zsh` - Ignores `.profile`[^zsh-env-profile-hack].

[^dash-env-profile-hack]: This can be worked around by setting `export ENV="$XDG_CONFIG_HOME/profile"` _in_ `$XDG_CONFIG_HOME/profile`...
  which obviously comes with caveats.

[^zsh-env-profile-hack]: Can be faked with `ENV` similarly to `dash`,
  but if set, _only `ENV`_ is read, `ZDOTDIR` is then ignored.

## `XDG_CONFIG_HOME/zsh/`

This is what `ZDOTDIR` is set to, allowing `.zshrc`, `.zprofile`, etc... to be kept out of `$HOME`.
The standard way to bootstrap this is to `export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"` in `/etc/zshenv`,
which is the earliest startup file that zsh reads[^zsh-startup-files],
but this would require either a manual set up change upon installation,
or worse, integrating a `root`-priveliged file modification in some bootstrap script.
Instead, I've settled for symlinking `~/.zshenv` to `$XDG_CONFIG_HOME/zsh/.zshenv` and setting `ZDOTDIR` there.
This requires no changes to the installation steps and works anywhere that symlinks are supported.

[^zsh-startup-files]: https://wiki.archlinux.org/title/Zsh#Startup/Shutdown_files
