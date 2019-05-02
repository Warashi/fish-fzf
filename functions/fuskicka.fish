function fuskicka
    if test (count $argv) -ne 1
	echo "Usage: fuskicka filename"
	return 1
    end
        
    set -l p "/"
    while true
	cat (echo "."|psub) (echo "../"|psub) (skicka ls "$p"|grep '/$'|psub)  | eval (__fzfcmd) | read -l select
	if test -z "$select"
            return 1
	end

	if test "$select" = "."
	    skicka upload $argv "$p"
	    return 0
	end
	
	string join "" "$p" "$select" | read p
	string sub -s -1 -l 1 "$p" | read -l suf
    end
end
