function fskicka
    set -l p "/"
    while true
	cat (echo "../"|psub) (skicka ls "$p"|psub) | eval (__fzfcmd) | read -l select
	if test -z "$select"
            return 1
	end
	
	string join "" "$p" "$select" | read p
	string sub -s -1 -l 1 "$p" | read -l suf
	if test "$suf" = "/"
	    continue
	end
	skicka download "$p" ./
	return 0
    end
end
