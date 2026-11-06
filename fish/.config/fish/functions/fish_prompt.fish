# Prompt
function fish_prompt -d "Write out the prompt"
	# Color Palette
	set -l foreground ddc7a1
	set -l selection 282828
	set -l comment 8f3f71
	set -l red ea6962
	set -l orange e78a4e
	set -l yellow d8a657
	set -l green a9b665
	set -l purple d3869b
	set -l cyan 89b482
	set -l blue 7daea3

	# Syntax Highlighting Colors
	set -g fish_color_normal $foreground
	set -g fish_color_command $cyan
	set -g fish_color_keyword $blue
	set -g fish_color_quote $yellow
	set -g fish_color_redirection $foreground
	set -g fish_color_end $orange
	set -g fish_color_error $red
	set -g fish_color_param $purple
	set -g fish_color_comment $comment
	set -g fish_color_selection --background=$selection
	set -g fish_color_search_match --background=$selection
	set -g fish_color_operator $green
	set -g fish_color_escape $blue
	set -g fish_color_autosuggestion $comment

	# Completion Pager Colors
	set -g fish_pager_color_progress $comment
	set -g fish_pager_color_prefix $cyan
	set -g fish_pager_color_completion $foreground
	set -g fish_pager_color_description $comment

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
				(set_color $fish_color_end) " $USER@$hostname" \
				(set_color $fish_color_cwd) (printf '  '; prompt_pwd --full-length-dirs 3)\
				(set_color $fish_color_command) (fish_vcs_prompt '  %s')\
				(set_color --reset) $stat
	end

	printf '%s%s ' $transient (if fish_is_root_user; printf '#'; else printf '$'; end)

end

