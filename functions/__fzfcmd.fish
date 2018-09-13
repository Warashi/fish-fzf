function __fzfcmd
    set -q FZF_TMUX; or set FZF_TMUX 0
    if [ $FZF_TMUX -eq 1 ]
        echo "fzf-tmux"
    else
        echo "fzf"
    end
end
