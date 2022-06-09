#!/usr/bin/env zsh

#GPG
gpg-connect-agent /bye >/dev/null 2>&1

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"

# Set GPG TTY
GPG_TTY=$(tty)
export GPG_TTY

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null
