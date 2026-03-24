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

https://github.com/stars/norwd/lists/terminal

### Required

#### zsh

https://zsh.sourceforge.io/FAQ/zshfaq01.html#l7

https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms

#### vim

https://www.vim.org/download.php

https://github.com/vim/vim#installation

#### git

https://git-scm.com/install

https://github.com/git/git/blob/master/INSTALL

### Optional

#### gh

https://github.com/cli/cli#installation

#### fzf

https://github.com/junegunn/fzf#installation

#### bat

https://github.com/sharkdp/bat#installation

#### batman (bat-extras)

https://github.com/eth-p/bat-extras/blob/master/doc/batman.md

https://github.com/eth-p/bat-extras#installation-via-package-manager

#### f*ck

https://github.com/nvbn/thefuck#installation

#### btop

https://github.com/aristocratos/btop#installation

#### bfs

https://github.com/tavianator/bfs#installation
