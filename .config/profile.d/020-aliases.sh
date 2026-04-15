#!/bin/sh

# Dotfiles
alias dotfiles='/usr/bin/git --git-dir="${HOME}/etc/" --work-tree="${HOME}"'

# Standard UNIX utils
alias grep='grep --color=auto'
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias la='ll -A'

# Drop in replacements
if [ -x "$(command -v bat)"       ] ; then alias cat=bat fi
if [ -x "$(command -v batman)"    ] ; then alias man=batman fi
if [ -x "$(command -v bfs)"       ] ; then alias find=bfs fi
if [ -x "$(command -v btop)"      ] ; then alias htop=btop fi
if [ -x "$(command -v fastfetch)" ] ; then alias neofetch='fastfetch --config neofetch.jsonc' fi

# Drop in replacement for grep is more complex
if [ -x "$(command -v ug)" ]
then
	# Taken from ugrep example aliases
	# https://github.com/Genivia/ugrep#short-and-quick-command-aliases
	# https://github.com/Genivia/ugrep/blob/c701fb8/LICENSE.txt
	alias uq='ug -Q'                         # interactive TUI search (uses .ugrep config)
	alias uz='ug -z'                         # compressed files and archives search (uses .ugrep config)
	alias ux='ug -U --hexdump'               # binary pattern search (uses .ugrep config)
	alias ugit='ug -R --ignore-files'        # works like git-grep & define your preferences in .ugrep config
	alias grep='ug -G'                       # search with basic regular expressions (BRE) like grep
	alias egrep='ug -E'                      # search with extended regular expressions (ERE) like egrep
	alias fgrep='ug -F'                      # find string(s) like fgrep
	alias zgrep='ug -zG'                     # search compressed files and archives with BRE
	alias zegrep='ug -zE'                    # search compressed files and archives with ERE
	alias zfgrep='ug -zF'                    # find string(s) in compressed files and/or archives
	alias xdump='ugrep -X ""'                # hexdump files without searching (don't use .ugrep config)
	alias zmore='ugrep+ -z -I -+ --pager ""' # view compressed, archived and regular files (don't use .ugrep config)
fi

# Fuzz
if [ -x "$(command -v bat)" ] && [ -x "$(command -v fzf)" ]
then
	alias fvim='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}" --bind "enter:become(vim {})"'
fi
