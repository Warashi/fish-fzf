function fzf_kill
  ps ax -o pid,time,command -U (whoami) | eval (__fzfcmd) | awk '{print $1}' | xargs kill $argv
end
