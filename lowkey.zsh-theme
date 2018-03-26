#!/usr/bin/zsh
# Goal: Don't be so fussy!

setopt PROMPT_SUBST

MODE_INDICATOR="%{$fg_bold[yellow]%} [NORMAL] %{$reset_color%}" # for vi

PROMPT='
%n@%m %~$(vi_mode_prompt_info)
$ '
RPROMPT=''

# no colors
zstyle ':completion:*' list-colors '=*=0'

# stop beeping so much!
unsetopt beep

