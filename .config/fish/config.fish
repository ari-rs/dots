function fish_greeting
	#fastfetch
end
alias ls="exa --icons"
export EDITOR=nvim
#function fish_prompt
#    echo "e"
#end
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
