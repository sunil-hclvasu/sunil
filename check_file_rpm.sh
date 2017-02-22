#!/bin/bash
###################
# Script: Check an RPM
# Version: 1.0  - Initial
# Author: Sunil Kamba Vasu
###################

echo -n "Enter RPM to check: "
read RPM
rpm -ql $RPM 2>/dev/null

