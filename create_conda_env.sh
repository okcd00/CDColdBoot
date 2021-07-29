if [ -n "$1" ]; then
    conda create -n $1 python=3.7.10
else
    conda create -n chendian python=3.7.10
fi
