#!/usr/bin/zsh
# Goal: Don't be so fussy!

setopt PROMPT_SUBST

fg_bold_yellow='%B%F{yellow}'
reset_color='%b%f'

MODE_INDICATOR="%{$fg_bold_yellow%} <<< %{$reset_color%}" # for vi

PROMPT='
%n@%m %~% $(vi_mode_prompt_info)
$ '
RPROMPT=''

# no colors
zstyle ':completion:*' list-colors '=*=0'

# stop beeping so much!
unsetopt beep

