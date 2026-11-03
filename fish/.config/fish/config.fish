# Theme
fish_config theme choose catppuccin-mocha

if status is-interactive
	# Integrate zoxide
	zoxide init fish | source
	# Integrate fzf
	fzf --fish | source
end
