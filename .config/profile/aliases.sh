# Dotfiles
alias dotfiles='/usr/bin/git --git-dir="${HOME}/etc/" --work-tree="${HOME}"'

# Colours
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Standard
alias ls='ls -F'
alias ll='ls -l'
alias la='ll -A'

# Fuzz
alias fvim='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}" --bind "enter:become(vim {})"'

# Drop in replacements
alias cat=bat
alias man=batman
alias find=bfs
alias htop=btop
