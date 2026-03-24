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

Although designed to work out of the box,
these dotfiles do require at least `git` and `zsh` to be installed.

#### zsh

_From https://www.zsh.org_

> Zsh is a shell designed for interactive use,
> although it is also a powerful scripting language.
> More information can be found on the "Zsh Web Pages" sites.

Pre-installed on MacOS, and easily avilable in most Linux distros.

* [Download](https://zsh.sourceforge.io/FAQ/zshfaq01.html#l7)
* [Install](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms)

#### git

_From https://git-scm.com_

> Git is a [free and open source](https://git-scm.com/about/#free-and-open-source)
> distributed version control system designed to handle everything
> from small to very large projects with speed and efficiency.
>
> Git is [lightning fast](https://git-scm.com/about)
> and has a huge ecosystem of
> [GUIs](https://git-scm.com/tools/guis),
> [hosting services](https://git-scm.com/tools/hosting),
> and
> [command-line tools](https://git-scm.com/tools/command-line).

Pre-installed on almost all Unix systems, including MacOS.

* [Download](https://git-scm.com/install)
* [Install](https://github.com/git/git/blob/master/INSTALL)

#### vim

_From https://www.vim.org_

> Vim is a highly configurable text editor
> built to make creating and changing any kind of text very efficient.
> It is included as "vi" with most UNIX systems and with Apple OS X.

Pre-installed on MacOS and usually available as `vi` on Linux[^vi-posix].

[^vi-posix]: The posix standard requires `vi`, but this is usually just a symlink to `vim`.
  See also https://pubs.opengroup.org/onlinepubs/9699919799.2016edition/utilities/vi.html

* [Download](https://www.vim.org/download.php)
* [Install](https://github.com/vim/vim#installation)

### Optional

In adition to the reqired dependencies,
there are some other tools that these dotfiles make use of or configure.
These are listed bellow, along with installation instructions.
None of these are escential, but all are highly recommended.

An up-to-date list of the terminal tools and software I use can be found on GitHub:

[Install](https://github.com/stars/norwd/lists/terminal)

#### gh

_From https://cli.github.com_

> GitHub CLI brings GitHub to your terminal.
> Free and open source.

[Install](https://github.com/cli/cli#installation)

#### fzf

_From the README_

> `fzf` is a general-purpose command-line fuzzy finder.
>
> It's an interactive filter program for any kind of list;
> files,
> command history,
> processes,
> hostnames,
> bookmarks,
> git commits,
> etc.
> With its novel "fuzzy" matching algorithm,
> you can quickly type in patterns with omitted characters
> and still get the results you want.

[Install](https://github.com/junegunn/fzf#installation)

#### bat

_From the README_

> A `cat(1)` clone with wings.
>
> `bat` tries to achieve the following goals:
>
> * Provide beautiful, advanced syntax highlighting
> * Integrate with Git to show file modifications
> * Be a drop-in replacement for (POSIX) cat
> * Offer a user-friendly command-line interface

[Install](https://github.com/sharkdp/bat#installation)

#### batman (bat-extras)

This is almost exlusively for the [batman](https://github.com/eth-p/bat-extras/blob/master/doc/batman.md).

_From the README_

> Read system manual pages (man) using bat as the manual page formatter.
>
> Gone are the days of losing your place while reading through monotone manual pages. With bat and batman, you can read man ifconfig with beautiful 24-bit color and syntax higlighting.
>
> If you have fzf installed, you can even use batman to search through manual pages!

[Install](https://github.com/eth-p/bat-extras#installation-via-package-manager)

#### f*ck

_From the README_

> The F*ck is a magnificent app,
> inspired by a @liamosaur tweet,
> that corrects errors in previous console commands.

[Install](https://github.com/nvbn/thefuck#installation)

#### btop

_From the README_

> Resource monitor that shows usage and stats for processor,
> memory,
> disks,
> network,
> and
> processes.
>
> C++ version and continuation of bashtop and bpytop.

[Install](https://github.com/aristocratos/btop#installation)

#### bfs

_From the README_

> A breadth-first version of the UNIX find command
>
> `bfs` is a variant of the UNIX `find` command that operates breadth-first rather than depth-first.
> It is otherwise compatible with many versions of `find`,
> including
> * POSIX
> * GNU
> * FreeBSD
> * OpenBSD
> * NetBSD
> * macOS

[Install](https://github.com/tavianator/bfs#installation)
