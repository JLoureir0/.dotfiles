# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme for zsh
ZSH_THEME=""

# oh-my-zsh framework plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

##### ZPLUG #####

local zplug_dir="$HOME/.zplug/repos/zplug/zplug"

if [[ ! -d ~/.zplug ]] then
    git clone https://github.com/zplug/zplug $zplug_dir
fi

source $zplug_dir/init.zsh

# A next-generation plugin manager for zsh
zplug "zplug/zplug"

# Fish shell like syntax highlighting for Zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# ZSH port of Fish shell's history search feature
zplug "zsh-users/zsh-history-substring-search", defer:3

# Fish-like autosuggestions for zsh
zplug "zsh-users/zsh-autosuggestions"

# Additional completion definitions for Zsh
zplug "zsh-users/zsh-completions"

# Gradle completions
zplug "gradle/gradle-completion"

# An oh-my-zsh plugin to help remembering those aliases you defined once
zplug "djui/alias-tips"

# Easy setup of cdr for zsh
zplug "willghatch/zsh-cdr", defer:0

# zsh anything.el-like widget
zplug "zsh-users/zaw", defer:1

# Little script to create, navigate and delete bookmarks in Bash and Zsh, using the fuzzy finder fzf
zplug "urbainvaes/fzf-marks"

# A modified version of oh-my-zsh's plugin colored-man-pages, optimized for solarized dark theme in terminal
zplug "zlsun/solarized-man"

# Dir colors for the jellybeans theme
zplug "tdwyer/dircolors-jellybeans"

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Pure ZSH theme
#zplug mafredri/zsh-async, from:github
#zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# Command-line productivity booster, offers quick access to files and directories, inspired by autojump, z and v
export CACHE_DIR="${HOME}/.cache"
[[ ! -d "${CACHE_DIR}" ]] && mkdir -p "${CACHE_DIR}"
fasd_cache="${CACHE_DIR}/fasd-init-cache"
zplug clvv/fasd, \
      as:command, \
      hook-build:"./fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install >| $fasd_cache", defer:1

#Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi

zplug load

##### ----- #####

# fasd
source "$fasd_cache"
unset fasd_cache

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=yellow'

# bind ctrl+space to accept current suggestion
bindkey '^ ' autosuggest-accept

# bind ctrl+r to fzf history
zle -N fh
bindkey '^r' fh
# bind alt+r to fzf history with edit
zle -N fhe
bindkey '^[r' fhe

alias z=zaw-fasd-directories

# User configuration

## dircolors-solarized
eval $(dircolors "$ZPLUG_HOME/repos/tdwyer/dircolors-jellybeans/dircolors.ansi")
##

#Ambient Variables
export EDITOR="nvim"
export BROWSER="google-chrome-stable"
export STEAM_FRAME_FORCE_CLOSE=1

#Load extra config files
for file in $HOME/.zsh/*.zsh; do
  source "$file";
done

# Add composer bin to path for laravel
# [[ ":$PATH:" != *":${HOME}/.config/composer/vendor/bin:"* ]] && export PATH=$PATH:$HOME/.config/composer/vendor/bin

# Load RVM into a shell session *as a function*
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/eilkahn/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/eilkahn/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/eilkahn/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/eilkahn/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

#WORK

#NIX
source ~/.nix-profile/etc/profile.d/nix.sh

#NPM
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

#DOOM
PATH="$HOME/.emacs.d/bin:$PATH"

#AWS
export AWS_PROFILE=cintegration

# aws cli completion start
autoload bashcompinit && bashcompinit
# aws cli completion end

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] 2>/dev/null ))
}
compctl -K _pip_completion pip
# pip zsh completion end

# SDKMAN
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
