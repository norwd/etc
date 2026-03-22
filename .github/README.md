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
