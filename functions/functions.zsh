# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Start a PHP server from a directory, optionally specifying the port
# (Requires PHP 5.4.0+.)
function phpserver() {
	local port="${1:-5000}";
	local ip="localhost";
	sleep 1 && open "http://${ip}:${port}/" &
	php -S "${ip}:${port}" -t bedrock-on-heroku/web;
}

# `o` with no arguments opens the current directory, otherwise opens the given
# location
function o() {
	if [ $# -eq 0 ]; then
		open .;
	else
		open "$@";
	fi;
}