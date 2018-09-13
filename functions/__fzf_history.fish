function __fzf_history
    set -q FZF_HISTORY_SYNC; or set FZF_HISTORY_SYNC 0
    if [ $FZF_HISTORY_SYNC -eq 1 ]
        history --save
        history --merge
    end

    history | eval (__fzfcmd) --tiebreak=index | read -l select
    if not test -z "$select"
        commandline -rb $select
    end
    commandline -f repaint
end
