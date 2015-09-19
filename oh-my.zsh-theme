# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: http://bbs.archlinux.org/viewtopic.php?pid=521888#p521888
PROMPT='
%B%{$fg_bold[blue]%}╭─{ %{$fg[green]%}%m %{$fg_bold[blue]%}}───────〔 %{$fg[white]%}%4~ %{$fg_bold[blue]%}〕───────{ %{$fg[yellow]%}'%D{"%a %b %d, %H:%M"}%b$'
%g%{$fg_bold[blue]%}╰─%{$fg_bold[green]%}● %{$reset_color%}'
RPROMPT=$'%b%{$fg[red]%}%B$(git_prompt_info) %{$reset_color%}%{$fg_bold[white]%}${${KEYMAP/vicmd/--NORMAL--}/(main|viins)/--INSERT--}%{$reset_color%}'
