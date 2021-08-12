if [ $# != 3 ]; then
    echo "USAGE: $0 <host> <remote_port> <local_port>"
else
    ssh $1 -N -f -L 127.0.0.1:$3:127.0.0.1:$2
fi
