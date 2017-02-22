#!/bin/bash
###################
# Script: Kill a process
# Version: 1.0  - Initial
# Author: Sunil Kamba Vasu
###################

echo -n "Enter PID to kill: "
read PID
PS=`ps -o pid $PID|grep -v "PID" 2>/dev/null|wc -l`
if [ $PS = 1 ]
then
        echo "Do you want to kill the below process ? "
        echo "Hit Enter to continue(Ctrl-C to cancel)..."
        read
        kill -9 $PID
else
        echo "Cannot find PID, $PID, or please use correct PID"
fi