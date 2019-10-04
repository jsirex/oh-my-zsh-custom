zle -C complete-file complete-word _generic
zstyle ':completion:complete-file::::' completer _files
bindkey '^x\t' complete-file
