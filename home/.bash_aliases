# Ask before over-writting a file
alias mv='mv -i'

# Ask before deleting a file, and automatically make it recursive
alias rm='rm -Ri'

# Ask before over-writting a file and recursively copy by default
alias cp='cp -iR'

# We want free disc space in human readable output, trust me
alias df='df -h'

# Automatically make directories recursivly
alias mkdir='mkdir -p'

# Easier navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# List all files colorized in long format
alias l='ls -lhp --color --group-directories-first'
alias la='ls -lhpa --color --group-directories-first'

# Date utilities
alias t='date +%H:%M:%S'
alias today='date +%d.%m.%Y'
alias week='date +%V'

# neovim
alias e='nvim'
alias vi='nvim'
alias vim='nvim'

# mpv
alias fmpv='mpv "$(fzf)"'
