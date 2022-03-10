# loads=`gpustat | awk '{print $8}'`
loads_str=""

for num in $( gpustat | awk '{print $8}' )
do
    if [ $num -gt 75 ]; then
	# echo "×"
	loads_str=$loads_str"\033[31mO\033[0m"
    elif [ $num -gt 50 ]; then
        # echo "O"
        loads_str=$loads_str"\033[33mO\033[0m"
    else
        # echo "○"	    
	loads_str=$loads_str"\033[32mO\033[0m"
    fi
done
echo $loads_str
