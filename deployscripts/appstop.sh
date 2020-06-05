#!/bin/bash
cd /home/apps/auto_pilot
export JAVA_HOME=/usr/local/java/jdk1.7.0_95
/usr/apache-ant-1.6.5/bin/ant stop_ap
export PID=`ps -ef | grep java | grep auto_pilot | awk -F" " {'print $2'}`
if [ -z $PID ];
then
    echo "No  FARGATE cpu defined . Going with default value 1024"   
else
    echo $PID
    kill -9 $PID 
fi