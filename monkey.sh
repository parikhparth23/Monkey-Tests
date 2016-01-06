#!/bin/bash
for ((n=0;n<500;n++)); 
do 
echo "******************************************************"
echo "Iteration: "$n
echo "Clearing the logs"
adb logcat -c
echo "Starting Monkey:"
#Just name of you package without the quotes
adb shell monkey -p "Your Package Name" -v 50000 --throttle 60 
echo "Saving the logs"
adb logcat -d > $n.MonkeyResults.log
echo "******************************************************"
done
