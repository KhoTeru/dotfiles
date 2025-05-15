local wezterm = require 'wezterm'
local config = {}
local act = wezterm.action

config.default_prog = { 'C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe' }
config.color_scheme = 'Tokyo Night Storm'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.keys = {
  { key = 'Enter', mods = 'CTRL|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } }, -- New split
  { key = 'w', mods = 'CTRL|SHIFT', action = act.CloseCurrentPane { confirm = false } }, -- Close split
  { key = 'LeftArrow', mods = 'CTRL', action = act.ActivatePaneDirection 'Left' }, -- Move focus to left split
  { key = 'RightArrow', mods = 'CTRL', action = act.ActivatePaneDirection 'Right' } -- Move focus to right split
}

return config
