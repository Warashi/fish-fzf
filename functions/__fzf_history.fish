function __fzf_history
    history | eval (__fzfcmd) --tac --no-sort --tiebreak=index | read -l select
    if not test -z "$select"
        commandline -rb $select
    end
    commandline -f repaint
end
