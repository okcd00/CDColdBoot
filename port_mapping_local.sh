if [ $# != 3 ]; then
    echo "USAGE: $0 <host> <port_in> <port_out>"
else
    ssh $1 -L 0.0.0.0:$3:127.0.0.1:$2
fi
