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

function p() {
	if [ $# -eq 0 ]; then
		cd $PROJECTS_WORK;
	else
		cd $PROJECTS_WORK/$1;
	fi;
}

function f() {
	if [ $# -eq 0 ]; then
		"$EDITOR" ".";
	else
		"$EDITOR" "$PROJECTS_WORK/$1";
	fi;
}

function g() {
	if [ $# -eq 0 ]; then
		cd $GITHUB_COM;
	else
		cd $GITHUB_COM/$1;
	fi;
}

function gg() {
	if [ $# -eq 0 ]; then
		cd $GITHUB_COM;
	else
		gh repo clone $1 $GITHUB_COM/$1;
        cd $GITHUB_COM/$1;
	fi;
}

compctl -W $PROJECTS_WORK -/ p
compctl -W $PROJECTS_WORK -/ f
compctl -W $GITHUB_COM -/ g
