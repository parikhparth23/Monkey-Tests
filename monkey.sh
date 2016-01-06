#!/bin/bash
for ((n=0;n<500;n++)); 
do 
echo "******************************************************"
echo "Iteration: "$n
echo "Clearing the logs"
adb logcat -c
echo "Starting Monkey:"
adb shell monkey -p "Your Package Name" -v 50000 --throttle 60 
#Just name of you package without the quotes
echo "Saving the logs"
adb logcat -d > $n.MonkeyResults.log
echo "******************************************************"
done
