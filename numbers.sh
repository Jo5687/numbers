#!/bin/bash
# numbers.sh
# Jo Kaufman
echo "Enter a positive number: "
read NUMBER
while echo "$NUMBER" | egrep -v "[0-9]" > /dev/null 2>&1
do
	echo "Enter a positive number: "
	read NUMBER
done
for((i = 1; i <= NUMBER; i++))
do
	if [ $((i%2)) -eq 0 ]
	then
		echo "$i is even"
	else
		echo "$i is odd"
	fi
done
