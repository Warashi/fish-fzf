function __fzf_ghq
    set -q GHQ_OPTIONS; or set GHQ_OPTIONS ""
    ghq list --full-path $GHQ_OPTIONS | eval (__fzfcmd) | read -l select
    if not test -z "$select"
        commandline -i $select
    end
    commandline -f repaint
end
