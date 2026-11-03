# Replace ls with eza
abbr --add ls "eza --color=always --icons=auto --sort=type"
abbr --add la "eza -aa --color=always --icons=auto --sort=type"
abbr --add ll "eza -lg --color=always --icons=auto --sort=type"
abbr --add lla "eza -laag --color=always --icons=auto --sort=type"

# Neovim
abbr --add v "nvim"
abbr --add vn "vd $XDG_CONFIG_HOME/nvim"
abbr --add vs "vd $XDG_CONFIG_HOME/fish"
abbr --add n "nvim -c 'Neorg workspace main'"

# Kitty
abbr --add kdiff "kitty +kitten diff"
abbr --add kssh "kitty +kitten ssh"

# Network Manager
abbr --add nmdown "nmcli c down"
abbr --add nmup "nmcli c up"

# Arch
abbr --add paca "sudo pacman -Rns $(pacman -Qtdq)"
abbr --add paci "pacman -Qq | fzf --multi --preview 'pacman -Qi {1}'"

# Other
abbr --add nvidia-settings "nvidia-settings --config=$XDG_CONFIG_HOME/nvidia/settings"
abbr --add tree "tree -C"
abbr --add wget "wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
abbr --add stow "stow -v --no-folding"

abbr --add H "Hyprland"
abbr --add KDE "/usr/lib/plasma-dbus-run-session-if-needed /usr/bin/startplasma-wayland"

abbr --add sxp "searchsploit"
abbr --add nc "nc -v"

abbr --add arec "ffmpeg -f pulse -i default -ac 1 $(date -I).flac"
