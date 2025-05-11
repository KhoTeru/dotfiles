#!/bin/sh

# Terminate already running bar instances
polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
# polybar $@ 2>&1 | tee -a /tmp/polybar.log

# Swivelgames version (VPN interfaces support)
polybar $@ 2>&1 | tee -a /tmp/polybar.log
