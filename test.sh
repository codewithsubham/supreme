

mode_check () {
    value=`cat /Users/subham/shell/test/gov.txt`
    mode=""

    if [ -z "$value" ]
    then 
        value="not set"
        mode="performance"      
    elif [ $value == "performance" ]
    then
        mode="powersave"
    elif [ $value == "powersave" ]
    then
        mode="performance"
    else
        value="not set"
        mode="performance"
    fi
    
    echo "your system mode is $value, would you like to change it in $mode mode"
    echo "press 1 to proceed and 0 to return"
    read input
}

mode_check


if [ -z "$input" ]
then 
    mode_check     
elif [ $input == 1 ]
then
    for t in $(ls /Users/subham/shell/test*/gov.txt)
    do
        echo $mode > $t
    done
elif [ $input == 0 ]
then
    exit
else
    mode_check
fi

echo "done"



