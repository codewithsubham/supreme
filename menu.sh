echo "Welcome" 
echo "Press for 1 for auto setup and 2 for advance setup and r for reboot"
read PERSON


# function declarations
Advance () {

    echo "advance"
    Install_app
    
}


Auto () {
    echo "auto"
}

Reboot () {

    echo "hell"
    #reboot
}

# advance function subMenu fucntion definations
message_promt () {

    echo "install $1 , press Y for Yes and N for No"
    read status
    if [ -z "$status" ]
    then
       message_promt $1
    elif [ $status == "y" ] || [ $status == "Y" ] 
    then
        return 1
    elif [ $status == "n" ] || [ $status == "N" ]
    then
        return 0
    else
        message_promt $1    
    fi
}

Install_app () {
    message_promt "app1"
    message_promt "app2"
    message_promt "app3"
    message_promt "app4"
    
    echo $returnValue
}


#controller code

if [ $PERSON == 1 ]
then
    Auto
elif [ $PERSON == 2 ]
then
    Advance
fi


