#!/usr/bin/zsh
# Goal: Don't be so fussy!

setopt PROMPT_SUBST

fg_bold_yellow='%B%F{yellow}'
reset_color='%b%f'

MODE_INDICATOR="%{$fg_bold_yellow%} <<< %{$reset_color%}" # for vi

PROMPT='
%n@%m %~$(git_prompt_info)$(git_remote_status)$(vi_mode_prompt_info)
$ '
RPROMPT=''

# no colors
zstyle ':completion:*' list-colors '=*=0'

# stop beeping so much!
unsetopt beep

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="⇡"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE=""
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="⇣"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="↕"
