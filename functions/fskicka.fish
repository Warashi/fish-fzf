function fskicka
    set -l p "/"
    while true
	cat (echo "../"|psub) (skicka ls "$p"|psub) | eval (__fzfcmd) | read -l select
	if test -z "$select"
            return 0
	end
	
	string join "" "$p" "$select" | read -l tmp
	string sub -s -1 -l 1 "$tmp" | read -l suf
	if test "$suf" != "/"
	    skicka download "$tmp" ./
	    continue
	end
	set p $tmp
    end
end
