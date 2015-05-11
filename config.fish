# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#useful
alias vimrc='vim ~/DotFiles/.vimrc'
alias bashrc='vim ~/DotFiles/.bashrc'
alias tmuxconf='vim ~/DotFiles/.tmux.conf'
alias fishconf='vim ~/DotFiles/config.fish'

set fish_greeting ""

function fish_prompt --description 'Write out the prompt'
    # Just calculate these once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color -o blue)
    end

    if not set -q __git_cb
        set __git_cb (set_color -o brown)" ("(git branch ^/dev/null | grep \* | sed 's/* //')")"(set_color -o blue)""
    end

    switch $USER

        case root

        if not set -q __fish_prompt_cwd
            if set -q fish_color_cwd_root
                set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
            else
                set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            end
        end

        printf '%s@%s %s%s%s%s # ' $USER $__fish_prompt_hostname "$__fish_prompt_cwd" (echo $PWD|sed -e 's|/private||' -e "s|^$HOME|~|") "$__fish_prompt_normal" $__git_cb

        case '*'

        if not set -q __fish_prompt_cwd
            set -g __fish_prompt_cwd (set_color -o blue)
        end

        printf '%s@%s %s%s%s%s $ ' (set_color -o green)$USER $__fish_prompt_hostname "$__fish_prompt_cwd" (echo $PWD|sed -e 's|/private||' -e "s|^$HOME|~|") "$__fish_prompt_normal" $__git_cb

    end
end

#Add android tools to path
set -gx PATH $PATH /home/eilkahn/opt/android-sdk-linux/platform-tools /home/eilkahn/opt/android-sdk-linux/tools

#ANDROID_HOME
set -x ANDROID_HOME $HOME/opt/android-sdk-linux

#tmux
alias tmux="tmux -2"
tmux new -As HACK
