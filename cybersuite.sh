#!/bin/bash

# Function to display the banner
display_banner() {
    echo -e '\033[31;1m
    	   _____      _               _____       _ _       
    	  / ____|    | |             / ____|     (_) |      
    	 | |    _   _| |__   ___ _ _| (___  _   _ _| |_ ___ 
    	 | |   | | | | '_ \ / _ \ '__\___ \| | | | | __/ _ \
    	 | |___| |_| | |_) |  __/ |  ____) | |_| | | ||  __/
    	  \_____\__, |_.__/ \___|_| |_____/ \__,_|_|\__\___|
    	         __/ |                                      
    	        |___/   Created By Technical Corp   

\033[0m'
}

# Function to display the main menu
display_menu() {
    clear
    display_banner
    echo -e '\033[36;1mMain Menu:\033[0m'
    echo -e '\033[37m[1]\e[36m Install and Update Requirements'
    echo -e '\033[37m[2]\e[36m Phishing Tools'
    echo -e '\033[37m[3]\e[36m WebCam Hack Tools'
    echo -e '\033[37m[4]\e[36m Exit\033[0m'
}

# Function for phishing tools
phishing_tools() {
    clear
    display_banner
    echo -e '\033[36;1mPhishing Tools Menu:\033[0m'
    echo -e '\033[37m[1]\e[36m Zphisher'
    echo -e '\033[37m[2]\e[36m SocialFish'
    echo -e '\033[37m[3]\e[36m HiddenEye'
    echo -e '\033[37m[4]\e[36m ShellPhish'
    echo -e '\033[37m[5]\e[36m Back to Main Menu\033[0m'
    read -p "Choose a phishing tool to install: " phishing_option

    case $phishing_option in
        1)
            mkdir -p Tools
            cd Tools
            git clone https://github.com/htr-tech/zphisher
            cd zphisher
            bash zphisher.sh
            cd ../../
            ;;
        2)
            mkdir -p Tools
            cd Tools
            git clone https://github.com/An0nUD4Y/SocialFish.git
            cd SocialFish
            python3 SocialFish.py
            cd ../../
            ;;
        3)
            mkdir -p Tools
            cd Tools
            git clone https://github.com/DarkSecDevelopers/HiddenEye.git
            cd HiddenEye
            python3 HiddenEye.py
            cd ../../
            ;;
        4)
            mkdir -p Tools
            cd Tools
            git clone https://github.com/thelinuxchoice/shellphish
            cd shellphish
            bash shellphish.sh
            cd ../../
            ;;
        5)
            return
            ;;
        *)
            echo -e '\033[31;1mInvalid Option. Returning to Main Menu.\033[0m'
            sleep 2
            return
            ;;
    esac
}

# Function for webcam hack tools
webcam_hack_tools() {
    clear
    display_banner
    echo -e '\033[36;1mWebCam Hack Tools Menu:\033[0m'
    echo -e '\033[37m[1]\e[36m CamPhish'
    echo -e '\033[37m[2]\e[36m SayCheese'
    echo -e '\033[37m[3]\e[36m Back to Main Menu\033[0m'
    read -p "Choose a webcam hack tool to install: " webcam_option

    case $webcam_option in
        1)
            mkdir -p Tools
            cd Tools
            git clone https://github.com/techchipnet/CamPhish
            cd CamPhish
            bash camphish.sh
            cd ../../
            ;;
        2)
            mkdir -p Tools
            cd Tools
            git clone https://github.com/hangetzzu/saycheese
            cd saycheese
            bash saycheese.sh
            cd ../../
            ;;
        3)
            return
            ;;
        *)
            echo -e '\033[31;1mInvalid Option. Returning to Main Menu.\033[0m'
            sleep 2
            return
            ;;
    esac
}

# Main loop
while true; do
    display_menu
    read -p "Choose an option: " islem

    case $islem in
        1)
            clear
            display_banner
            echo -e "\033[47;31;5m Installing and updating requirements...\033[0m"
            sleep 3
            pkg install git -y
            pkg install python python2 -y
            pkg install pip pip2 -y
            pkg install curl -y
            apt update && apt upgrade -y
            echo -e "\033[47;3;35m Installation and update complete.\033[0m"
            sleep 2
            ;;
        2)
            phishing_tools
            ;;
        3)
            webcam_hack_tools
            ;;
        4)
            clear
            echo "Exiting the tool. Goodbye!"
            exit 0
            ;;
        *)
            echo -e '\033[36;40;1m Invalid Option. Please try again.\033[0m'
            sleep 2
            ;;
    esac
done
