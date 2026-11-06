# Theme
if status is-interactive
	# Set fish theme
	fish_config theme choose gruvbox-material
	# Integrate zoxide
	zoxide init fish | source
	# Integrate fzf
	fzf --fish | source
end
