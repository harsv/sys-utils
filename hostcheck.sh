#!/bin/bash
#echo $#
if [ $# -lt 1 ]
then echo "Provide a hostname."
exit
fi
HOST=$1
FLAG=1
while test $FLAG
do
ping -q -c 1 $HOST > /dev/null; if test ! $?; then echo "Host $HOST is back" | mailx -s "Host is back" hars.vardhan@samsung.com; FLAG=0; 
#else echo "Test Performed."; FLAG=0;
fi
sleep 30
done
