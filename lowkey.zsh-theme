#!/usr/bin/zsh
# Goal: Don't be so fussy!

setopt PROMPT_SUBST

fg_bold_yellow='%B%F{yellow}'
reset_color='%b%f'

MODE_INDICATOR="%{$fg_bold_yellow%} <<< %{$reset_color%}" # for vi

local exitcode=$'%(?..\n(exited with code %?%))'
local git_info='$(git_prompt_info)$(git_remote_status)'
local vi_info='$(vi_mode_prompt_info)'

PROMPT="$exitcode
%n@%m %~%{$git_info%}%{$vi_info%}
$ "
RPROMPT=''

# no colors in auto-completion
zstyle ':completion:*' list-colors '=*=0'

# stop beeping so much!
unsetopt beep

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="⇡"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE=""
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="⇣"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="↕"
