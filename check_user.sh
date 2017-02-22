#!/bin/bash
###################
# Script: Check user/group
# Version: 1.0  - Initial
# Author: Sunil Kamba Vasu
###################

echo -n "Enter unsername/groupname to check: "
read USER

USER1=`grep $USER /etc/passwd >/dev/null 2>/dev/null`
if [ $? = 0 ]
then
        echo "A local user $USER1 found with ID: `id $USER1`"
else
        RC1=1
fi

GROUP=`grep $USER /etc/group >/dev/null 2>/dev/null`
if [ $? = 0 ]
then
        echo "A local group $USER found with ID: `id $USER`"
else
        RC2=1
fi

RC=$((RC1+RC2))
if [ $RC = 2 ]
then
        echo "No local user/group found..."
fi
