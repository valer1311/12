#!/bin/sh
cd /tmp/tmpfoldername/
while (true)
do
sleep 10
result=`ps aux | grep -i "defaulttimer.sh" | grep -v "grep" | wc -l`

if [ $result -ge 1 ]
	then
	echo "script is running"
else
	echo "script is not running"
	sudo ./defaulttimer.sh
fi
done;


