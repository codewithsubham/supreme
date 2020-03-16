echo "Welcome" 
echo "Press for 1 for auto setup and 2 for advance setup and r for reboot"
read PERSON


# function declarations
Advance () {

    echo "advance"
    advance_main_menu
}


Auto () {
    echo "auto"
}

Reboot () {

    echo "hell"
    #reboot
}

advance_main_menu () {
    echo "To install apps press 1  , to set theme press 2 , to reboot press R"
    read menu
    if [ -z "$menu" ]
    then
        main_menu
    elif [ $menu == 1 ]
    then
        install_app
    elif [ $menu == 2 ]
    then
        set_theme
    elif [ $menu == "r" ] || [ $menu == "R"]
    then    
        Reboot
    else
        advance_main_menu
    fi        
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

install_app () {
    message_promt "app1"
    message_promt "app2"
    message_promt "app3"
    message_promt "app4"
    
    echo $returnValue
}

set_theme () {

    # code to set thee
}
#controller code

if [ $PERSON == 1 ]
then
    Auto
elif [ $PERSON == 2 ]
then
    Advance
fi
