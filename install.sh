#!/bin/bash
echo -e "Welcome to the yeet installer!"
rm -rf ~/.yeet

function get_server_ip {
    echo -e "Please enter the server IP of the server you wish to yeet to: "
    read server_ip
    echo -e "You entered $server_ip. Is this correct? Type 1 for Yes, 0 for No: "
    read server_ip_check
    if (($server_ip_check == 0)); then
        clear
        get_server_ip
    else if (($server_ip_check != 1)); then
        echo -e "Your input was not a 1 or 0, please try again!"
        clear
        get_server_ip
    fi
}

function get_yeet_command {
    echo -e "Please enter the syntax of the command you would like to use to yeet things. Please note that if it already exists, it will be overridden with potentailly disastrous results: "
    read yeet_cmd
    echo -e "You entered: $yeet_cmd. Is this okay? Type 1 for Yes, 0 for No: "
    read yeet_cmd_check
    if (($yeet_cmd_check == 0)); then
        clear
        get_yeet_command
    else if (($yeet_cmd_check != 1)); then
        echo -e "Your input was not a 1 or 0, please try again!"
        clear
        get_yeet_command
    fi
}

function install_yeet {
    mkdir -p ~/.yeet
    cd ~/.yeet
    curl -O 
}

get_server_ip
clear
get_yeet_command
echo -e "We will now attempt to install yeet!"