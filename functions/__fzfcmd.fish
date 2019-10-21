function __fzfcmd
    set -q FZF_CMD; or set FZF_CMD "fzf-tmux"
    set -q FZF_DEFAULT_OPTIONS; or set FZF_DEFAULT_OPTIONS ""
    echo $FZF_CMD $FZF_DEFAULT_OPTS
end
