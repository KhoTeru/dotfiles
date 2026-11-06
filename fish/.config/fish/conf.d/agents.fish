# Sets GPG (and SSH) agents
set -gx GPG_TTY (tty)
gpg-connect-agent updatestartuptty /bye &>/dev/null

set -e SSH_AGENT_PID
if not set -q gnupg_SSH_AUTH_SOCK_by; or test "$gnupg_SSH_AUTH_SOCK_by" -ne $fish_pid
	set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
end
