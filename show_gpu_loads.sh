# loads=`gpustat | awk '{print $8}'`
with_color=0
loads_str=""

if [ -n "$1" ]; then
    if [ ${1} = "--color" ]; then
        with_color=1  
    fi
fi

for num in $( gpustat | awk '{print $8}' )
do
    if [ $num -gt 50 ]; then
	# echo "×"
	if [ $with_color -eq 1 ]; then
            loads_str=$loads_str"\033[31m■\033[0m"
	else
            loads_str=$loads_str"■"
	fi
    elif [ $num -gt 25 ]; then
        if [ $with_color -eq 1 ]; then
            loads_str=$loads_str"\033[33m▄\033[0m"
        else
            loads_str=$loads_str"▄"
        fi
    else
        if [ $with_color -eq 1 ]; then
            loads_str=$loads_str"\033[32m□\033[0m"
        else
            loads_str=$loads_str"□"
        fi
    fi
done
echo $loads_str
