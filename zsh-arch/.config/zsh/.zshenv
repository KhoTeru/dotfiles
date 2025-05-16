# Paste in /etc/zsh/zshenv
#export ZDOTDIR="$HOME"/.config/zsh

# Options for tiling window managers
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"
export AWT_TOOLKIT=MToolKit
export _JAVA_AWT_WM_NONREPARENTING=1

# XDG Directories
export XDG_SCREENSHOTS_DIR="$HOME"/Sync/Pictures/Screenshots
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CACHE_HOME="$HOME"/.cache

# Path
export GOPATH="$XDG_DATA_HOME"/go
export GEM_HOME="$(gem env user_gemhome)"
export PATH="$PATH":"$GOPATH"/bin:"$GEM_HOME"/bin:"$HOME"/.local/bin:"$HOME"/.config/scripts

# Config directories
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
#export PYTHONSTARTUP=/etc/python/pythonrc

# Themes
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=kvantum
export XCURSOR_PATH="$XDG_DATA_HOME"/icons:"$HOME"/.icons:/usr/share/icons
export FZF_DEFAULT_OPTS='--color=fg:#c0caf5,hl:#ff9e64
--color=fg+:#c0caf5,hl+:#ff9e64
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'

# Pager options
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT='-c'

# Editor
export EDITOR=nvim

# Others
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export OMPI_MCA_opal_warn_on_missing_libcuda=0
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"/ssh-agent.socket
