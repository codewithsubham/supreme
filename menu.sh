
# function declarations
Advance () {

    echo "advance"
    advance_main_menu
}


Auto () {
    echo "Auto completing task"
    main_menu
}

Reboot () {
    
    sudo reboot now
    #reboot
}

advance_main_menu () {
    echo "To install apps press 1  , to set theme press 2 , 3 to fix_google_services , M to return to main menu to reboot press R"
    read menu
    if [ -z "$menu" ]
    then
        advance_main_menu
    elif [ $menu == 1 ]
    then
        install_app
    elif [ $menu == 2 ]
    then
        set_theme
    elif [ $menu == 3 ]
    then
        fix_google_services    
    elif [ $menu == "r" ] || [ $menu == "R" ]
    then    
        Reboot
    elif [ $menu == "m" ] || [ $menu == "M" ]
    then
        main_menu
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

  
    
   advance_main_menu
}

set_theme () {

    echo "setting theme"

    advance_main_menu
    # code to set thee
}

fix_google_services () {
    # code to fix_google_services
    echo "fixing google services"
    advance_main_menu
}

#controller code

main_menu() {
    echo "MAIN MENU"
    echo "Press for 1 for auto setup and 2 for advance setup and r to reboot"
    read PERSON

    if [ $PERSON == 1 ]
    then
        Auto
    elif [ $PERSON == "r" ] || [ $PERSON == "R" ]
    then    
        Reboot    
    elif [ $PERSON == 2 ]
    then
        Advance
    fi

}

main_menu



