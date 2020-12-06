#!/usr/bin/env bash

if [ "$#" -ne 2 ] && [ "$#" -ne 3 ]; then
	echo "usage: progress current goal [len]"
	echo -e "\tcurrent: \tcurrent value"
	echo -e "\tgoal: \tpages goal"
	echo -e "\toptional:"
	echo -e "\tlen: \tprogress bar length (default=80)"
	exit 0
fi

current=$1
goal=$2

if [ "$#" -eq 3 ]; then
	len=$3
else
	len=80
fi

page_count=$(echo "scale=2; `detex -n $1 | wc -c`/1800;" | bc)
#echo "page_count: $page_count"
current=$page_count


page_count_int=${page_count%.*}
#rate=$(($lines))
blank=$(($goal - $page_count_int))
#echo "blank: $blank"
#echo "goal: $goal"

if [ $blank -le 0 ]; then
	current=$goal
	blank=0
fi

#double_current=$(echo 'scale=2; '$current | bc)

percent=$(echo 'scale=2; '$page_count'*100/'$goal | bc)
p=$(echo 'scale=2; '$len'/'$goal'*'$goal| bc)
full=$(echo $p | awk '{print int($0)}')
empty=$(($len-$full))
#echo "full"
#echo $full
#echo "empty"
#echo $empty

printf "|"
printf "%0.s▇" `seq 0 $(($full - 1))`

if [ $blank -gt 0 ]; then
	printf "%0.s_" `seq 0 $(($empty - 1))`
fi

printf "| %s/%0.0f  %s%%\n" "$page_count" "$goal" "$percent"
