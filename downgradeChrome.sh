#!/bin/bash

# This script is made by Aziz -->> Reach me at azizsalim02@gmail.com

Green='\033[0;32m'
Blue='\033[0;34m'
Red='\033[0;31m'
Reset='\033[0m'

echo -e "

        ${Green}Chrome Downgrading Script Is Running! This script is made by AZIZ!${Reset}

"

if [ -f chrome-86.deb ]
then
	echo -e "	${Blue}Installing 86 Version Chrome${Reset}"
	sudo dpkg -i chrome-86.deb &> /dev/null
else
	echo -e "	${Blue}Downloading 86 Version Chrome${Reset}
	"
	wget https://www.slimjet.com/chrome/download-chrome.php?file=files%2F86.0.4240.75%2Fgoogle-chrome-stable_current_amd64.deb -O chrome-86.deb &> /dev/null
	echo -e "	${Blue}Installing 86 Version Chrome${Reset}"
	sudo dpkg -i chrome-86.deb &> /dev/null
fi

if [ $? -eq 0 ]
then
	echo -e "
	
	${Green}Chrome Downgraded Successfully.${Reset}
	
	"
else
	echo -e "
	
	${Red}Errors encountered while downgrading, contact Aziz!${Reset}
	
	"
fi



