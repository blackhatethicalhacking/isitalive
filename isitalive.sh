#!/bin/bash
# This tool is written by Chris "SaintDruG" Abou-Chabke for Black Hat Ethical Hacking
#Version 1.0a
BLUE='\033[94m'
RED='\033[91m'
GREEN='\033[92m'
ORANGE='\033[93m'
TARGET="$1"
CURRENT_PATH=$(pwd)


if [ -z $TARGET ]; then
echo -e "$GREEN  ____  _   _ _____ _   _" | lolcat
echo -e "$GREEN| __ )| | | | ____| | | |" | lolcat
echo -e "$GREEN|  _ \| |_| |  _| | |_| |" | lolcat
echo -e "$GREEN| |_) |  _  | |___|  _  |" | lolcat
echo -e "$GREEN|____/|_| |_|_____|_| |_|" | lolcat
  	echo ""
	echo -e "$GREEN [+] by Chris "SaintDruG" Abou-Chabke" | lolcat
	echo -e "$GREEN [+] blackhatethicalhacking.com" | lolcat
	echo -e "$GREEN [-] Usage: isitalive.sh <files>" | lolcat
	exit
fi

if [[ $TARGET == "--help" ]] || [[ $TARGET == "-h" ]]; then
echo -e "$RED  ____  _   _ _____ _   _" | lolcat
echo -e "$RED| __ )| | | | ____| | | |" | lolcat
echo -e "$RED|  _ \| |_| |  _| | |_| |" | lolcat
echo -e "$RED| |_) |  _  | |___|  _  |" | lolcat
echo -e "$RED|____/|_| |_|_____|_| |_|" | lolcat
echo ""
	echo -e "$GREEN [+] by Chris "SaintDruG" Abou-Chabke" | lolcat
	echo -e "$GREEN [+] blackhatethicalhacking.com" | lolcat
    echo -e "$GREEN [+] Find alive hosts from domains, IPs, URLs" | lolcat
    echo -e "$GREEN [+] 'pip install lolcat' to get colors :) " | lolcat
	echo -e "$GREEN [-] Usage: isitalive.sh <files>" | lolcat
    exit
fi

if [ ! -f $TARGET ]; then
    echo -e "$RED [+] ---------  File Not Found -------------- [+]" | lolcat
    echo -e "$RED [+] ---------  Check - FILE PATH -------------- [+]" | lolcat
    exit
fi

createdir=$(mkdir -p "$CURRENT_PATH/output/")
FILENAME=$( basename $TARGET )
echo -e "$BLUE  ____  _   _ _____ _   _"
echo -e "$BLUE| __ )| | | | ____| | | |"
echo -e "$BLUE|  _ \| |_| |  _| | |_| |"
echo -e "$BLUE| |_) |  _  | |___|  _  |"
echo -e "$BLUE|____/|_| |_|_____|_| |_|"
echo -e ""
echo -e "$ORANGE [+] by Chris "SaintDruG" Abou-Chabke"
echo -e "$ORANGE + ------------------------------=[Gathering Subdomains]=-------------- +" | lolcat
echo -e ""
for foo in $(cat $TARGET) #Where the magic begins, simple neat with a 1337 mindset
do
    ping -c1 -W1 $foo > /dev/null 2>&1
    if [[ $? -eq 0 ]];
    then
        echo -e "$ORANGE [+]--- VALID ---[+] $foo"
        echo -e "$foo" | tee -a $CURRENT_PATH/output/valid-$FILENAME > /dev/null 2>&1

    else
        echo -e "$foo" | tee -a $CURRENT_PATH/output/notvalid-$FILENAME
    fi
done
echo -e ""
echo -e "$BLUE  Valid Subdomains are saved to: output/valid-$FILENAME"
echo -e "$BLUE  Invalid Subdomains saved to: output/notvalid-$FILENAME"
vcounter=$(cat $CURRENT_PATH/output/valid-$FILENAME | sort -u | wc -l )
fcounter=$(cat $CURRENT_PATH/output/notvalid-$FILENAME | sort -u | wc -l )
orgcounter=$(cat $TARGET | sort -u | wc -l )
echo -e "$RED   TOTAL DOMAINS : ${orgcounter} , ALIVE : ${vcounter} , DOWN : ${fcounter}" | lolcat
echo -e "$BLUE + ------------------------------=[Awesome! Operation Complete, you know what to do now!]=------------------------------------- +" | lolcat