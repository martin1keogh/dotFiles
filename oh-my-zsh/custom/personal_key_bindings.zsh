function zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/ M:command}/(main|viins)/}"
    zle reset-prompt
}

# zle -N zle-line-init
zle -N zle-keymap-select

bindkey -v

# Home key variants
bindkey '\e[1~' vi-beginning-of-line
bindkey '\eOH' vi-beginning-of-line

# End key variants
bindkey '\e[4~' vi-end-of-line
bindkey '\eOF' vi-end-of-line

bindkey -M viins '^o' vi-backward-kill-word

bindkey -M vicmd 'yy' vi-yank-whole-line
bindkey -M vicmd 'Y' vi-yank-eol

bindkey -M vicmd 'y.' vi-yank-whole-line
bindkey -M vicmd 'c.' vi-change-whole-line
bindkey -M vicmd 'd.' kill-whole-line

bindkey -M vicmd 'u' undo
bindkey -M vicmd 'U' redo

bindkey -M vicmd 'K' run-help
bindkey -M viins '\eK' run-help

bindkey -M vicmd '\-' vi-repeat-find
bindkey -M vicmd '_' vi-rev-repeat-find

bindkey -M viins '\e.' insert-last-word
bindkey -M vicmd '\e.' insert-last-word

bindkey -M viins '^a' beginning-of-line
bindkey -M viins '^e' end-of-line

# Kill input from the current point to the end of line with Ctrl-k
bindkey '^k' kill-line
# Search the history incremantally with Ctrl-r
bindkey '^r' history-incremental-search-backward

bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

bindkey "^W" backward-kill-word
bindkey "^U" backward-kill-line
bindkey "^?" backward-delete-char
