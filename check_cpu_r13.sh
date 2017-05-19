#!/bin/bash
#
# Check CPU Performance plugin for Nagios 
#
# Licence : GPL - http://www.fsf.org/licenses/gpl.txt
#
# Author        : Luke Harris
# version       : 2017021401
# Creation date : 1 October 2010
# Revision date : 14 February 2017
# Modified by   : Eduardo Rocha
# For           : Region 13 ESC
# Description   : Nagios plugin to check CPU performance statistics.
#               The script is used to obtain key CPU performance statistics by executing the sar command, eg. user, system, iowait, steal, nice, idle
#		The Nagios Threshold test is based on CPU idle percentage only, this is NOT CPU used.
#
# USAGE         : ./check_cpu_r13.sh {warning} {critical}
#
# Example: ./check_cpu_r13.sh 20 10 
# OK: CPU Idle = 84.10% | CpuUser=12.99; CpuNice=0.00; CpuSystem=2.90; CpuIowait=0.01; CpuSteal=0.00; CpuIdle=84.10:20:10
#
# Note: the option exists to NOT test for a threshold. Specifying 0 (zero) for both warning and critical will always return an exit code of 0.



#Ensure warning and critical limits are passed as command-line arguments
if [ -z "$1" -o -z "$2" ]
then
 echo "Please include two arguments, eg."
 echo "Usage: $0 {warning} {critical}"
 echo "Example :-"
 echo "$0 20 10"
exit 3
fi

#Disable nagios alerts if warning and critical limits are both set to 0 (zero)
if [ $1 -eq 0 ]
 then
  if [ $2 -eq 0 ]
   then
    ALERT=false
  fi
fi
        
#Ensure warning is greater than critical limit
if [ $1 -lt $2 ]
 then
  echo "Please ensure warning is greater than critical, eg."
  echo "Usage: $0 20 10"
  exit 3
fi


SARCPU=`/usr/bin/sar -P ALL|grep all|grep -v Average|tail -1`
SYSSTATRPM=`rpm -q sysstat|awk -F\- '{print $2}'|awk -F\. '{print $1}'`


if [ $SYSSTATRPM -gt 7 ]
 then
  SARCPUIDLE=`echo ${SARCPU}|awk '{print $9}'|awk -F. '{print $1}'`
  CPU=`echo ${SARCPU}|awk '{print "CPU Idle = " $9 "% | " "CpuUser=" $3 "; CpuNice=" $4 "; CpuSystem=" $5 "; CpuIowait=" $6 "; CpuSteal=" $7 "; CpuIdle=" $9 ""}'`
 else
  SARCPUIDLE=`echo ${SARCPU}|awk '{print $7}'|awk -F. '{print $1}'`
  CPU=`echo ${SARCPU}|awk '{print "CPU Idle = " $7 "% | " "CpuUser=" $3 "; CpuNice=" $4 "; CpuSystem=" $5 "; CpuIowait=" $6 "; CpuIdle=" $7 ""}'`
fi


#Display CPU Performance without alert
if [ "$ALERT" == "false" ]
 then
		echo "$CPU"
		exit 0
 else
        ALERT=true
fi

#Display CPU Performance with alert
if [ ${SARCPUIDLE} -lt $2 ]
 then
		echo "CRITICAL: $CPU"
		exit 2
 elif [ $SARCPUIDLE -lt $1 ]
		 then
		  echo "WARNING: $CPU"
		  exit 1
         else
		  echo "OK: $CPU"
		  exit 0
fi



