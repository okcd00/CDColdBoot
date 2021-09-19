if [ -n "$1" ]; then
	ps -ef | grep $1 | grep -v grep | cut -c 9-15 | xargs kill -9
else
	echo "a target string is required"
fi
