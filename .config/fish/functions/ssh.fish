function ssh
	set TERM xterm-256color
	command ssh $argv;
	set TERM xterm-kitty
end
