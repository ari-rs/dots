function fish_greeting
	#fastfetch
end
alias ls="eza --icons"
alias cat="bat"
alias cd="__zoxide_z"
alias cdi="__zoxide_zi"
alias hx="helix"
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

# https://unix.stackexchange.com/questions/235704/fish-sudo-command-not-found
function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        echo sudo $history[1]
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

zoxide init --no-cmd fish | source
