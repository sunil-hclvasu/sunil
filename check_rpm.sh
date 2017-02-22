#!/bin/bash
###################
# Script: Check an RPM
# Version: 1.0  - Initial
# Author: Sunil Kamba Vasu
###################

echo -n "Enter file to check: "
read FILE
RPM=`rpm -qf $FILE 2>/dev/null`
if [ $? = 0 ]
then
        echo "RPM associated with $FILE is : $RPM"
else
        echo "File is not related to any package or not exists"