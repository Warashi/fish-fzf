function __fzf_ghq
    ghq list --full-path | eval (__fzfcmd) | read -l select
    if not test -z "$select"
        commandline -i $select
    end
    commandline -f repaint
end
