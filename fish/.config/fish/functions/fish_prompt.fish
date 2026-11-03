# Prompt
function fish_prompt -d "Write out the prompt"
	# Status
	set -l last_status $status
	set -l stat
	if test $last_status -ne 0
		set stat (set_color $fish_color_error)" ✘ $last_status "(set_color --reset)
	end

	# Git
	set -g __fish_git_prompt_char_stagedstate "+"
	set -g __fish_git_prompt_char_dirtystate " !"
	set -g __fish_git_prompt_char_untrackedfiles " ?"
	set -g __fish_git_prompt_char_cleanstate ""
	set -g __fish_git_prompt_char_stateseparator " "
	set -g __fish_git_prompt_color_branch $fish_color_command
	set -g __fish_git_prompt_color_stagedstate $fish_color_end
	set -g __fish_git_prompt_color_dirtystate $fish_color_escape
	set -g __fish_git_prompt_color_untrackedfiles $fish_color_cwd
	set -g __fish_git_prompt_color_cleanstate $fish_color_option
	set -g __fish_git_prompt_show_informative_status true

	# Transient Prompt
	set -g fish_transient_prompt 1
		if contains -- --final-rendering $argv
			# Skip most of the prompt in completed commands
		else
			set transient \
				" $USER@$hostname" \
				(set_color $fish_color_cwd) (printf '  '; prompt_pwd --full-length-dirs 3)\
				(set_color $fish_color_command) (fish_vcs_prompt '  %s')\
				(set_color --reset) $stat
	end

	printf '%s%s ' $transient (if fish_is_root_user; printf '#'; else printf '$'; end)

end

