function fzf_kill
  ps ax -o pid,time,command -U (whoami) | eval (__fzycmd) | awk '{print $1}' | xargs kill $argv
end
