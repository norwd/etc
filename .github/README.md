# ~/etc - dotfiles, configs, settings

## Usage

This repo is loosely based on the strategy described on the [Arch Linux Wiki][archwiki-dotfiles],
althought it is not Arch-specific, I also use this on MacOS.

### Installation

```shell
git clone --bare https://github.com/norwd/etc ~/etc
git --git-dir="${HOME}/etc/" --work-tree="${HOME}" checkout
git --git-dir="${HOME}/etc/" config --local status.showUntrackedFiles no
```

Note, after installation, the `dotfiles` alias will be available instead of specifying the `--git-dir` flag.

```shell
dotfiles pull
dotfiles add ~/.vimrc
dotfiles commit -m "Update vimrc"
dotfiles push
```

[archwiki-dotfiles]: https://wiki.archlinux.org/title/Dotfiles

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
These are listed bellow, along with installation instructions.
None of these are escential, but all are highly recommended.
Unlike other dotfile repos, these are not automatiaclly installed.
This is because not all tools will be used on all installations,
there's no need to bring arcoss all the development tools onto a media machine,
similarly, there's no need to install media tools onto a development machine.
Instead, I organise tools and external software using GitHub Star Lists.
Any of the repos in these lists can be mixed and matched with these dotfiles.

* https://github.com/stars/norwd/lists/vim
* https://github.com/stars/norwd/lists/macos
* https://github.com/stars/norwd/lists/fonts
* https://github.com/stars/norwd/lists/terminal
* https://github.com/stars/norwd/lists/colourschemes
