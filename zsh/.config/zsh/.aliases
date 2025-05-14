# Use sudo with other aliases
alias sudo='sudo '

# Replace ls with eza
alias ls='eza --color=always --icons=auto --sort=type'
alias la='eza -aa --color=always --icons=auto --sort=type'
alias ll='eza -lg --color=always --icons=auto --sort=type'
alias lla='eza -laag --color=always --icons=auto --sort=type'

# Neovim
alias v='nvim'
alias vn="vd $XDG_CONFIG_HOME/nvim"
alias vz="vd $ZDOTDIR"
alias n='nvim -c "Neorg workspace main"'

# Kitty
alias kdiff='kitty +kitten diff'
alias ksh='kitty +kitten ssh'

# Network Manager
alias nmdown='nmcli c down'
alias nmup='nmcli c up'

# Arch
if [ "Arch" = "$(lsb_release -i | awk '/Arch/ {print $NF}')" ]; then
        alias pacu='sudo pacman -Syu && paru -Sua; pipx upgrade-all'
        alias paca='pacman -Qdtq | sudo pacman -Rn -'
        alias paci='pacman -Qq | fzf --multi --preview "pacman -Qi {1}"'
fi

# Wizlight
alias wdim='wizlight on --ip 192.168.1.109 --k 4200 --brightness 100'
alias wdimmer='wizlight on --ip 192.168.1.109 --k 4200 --brightness 75'
alias woff='wizlight off --ip 192.168.1.109'
alias won='wizlight on --ip 192.168.1.109 --k 4200 --brightness 255'

# Other
alias curl='curl -s'
alias nvidia-settings="nvidia-settings --config=$XDG_CONFIG_HOME/nvidia/settings"
alias tree='tree -C'
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
alias sps="ps -u teru | grep"
alias stow='stow -v --no-folding'
