#!/bin/bash
cd /home/apps/auto_pilot
/usr/apache-ant-1.6.5/bin/ant stop_ap
export PID=`ps -ef | grep java | grep auto_pilot | awk -F" " {'print $2'}`
echo $PID
kill -9 $PID