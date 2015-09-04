#!/bin/bash

##David De La Cruz IT 3510 HW1

while [ true ];
do
echo "What is your username?"
read USER
	CHECKUSER="$(grep $USER /etc/passwd | cut -d ':' -f1)"
		if [ "$CHECKUSER" = "$USER" ];then
			break
		fi
echo "Your user doesnt exist, enter again? [Y/N]"
read YESNO

	if [[ ("$YESNO" = 'N') || ("$YESNO" = 'n') ]];then
		exit
	fi

done

grep $USER /etc/passwd | cut -d ':' -f7,6 > results.txt

cut -d ':' -f1 results.txt | ls  >> results.txt

echo "Everything listed in your home directory is in the file results.txt" 




