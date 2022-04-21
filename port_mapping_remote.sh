if [ $# == 2 ]; then
    ssh $1 -N -f -L 127.0.0.1:$2:127.0.0.1:$2
elif [ $# == 3 ]; then
    ssh $1 -N -f -L 127.0.0.1:$3:127.0.0.1:$2
else
    echo "USAGE: $0 <host> <remote_port> <local_port>"
fi
