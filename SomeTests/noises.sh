#!/bin/bash

# if-else test
v1="s1"
v2="s2"
if [ "$v1" = "$v2" ]; then
	echo "Ture"
else
	echo false
fi

# further test
animal=${1:?Provide a parameter}

if [ $animal = "horses" ]; then
    echo "neigh"
elif [ $animal = "ducks" ]; then
    echo "quack"
elif [ $animal = "dogs" ]; then
    echo "woof"
elif [ $animal = "cats" ]; then 
    echo "meow"
else
    echo "No correponding nickname!"
fi

# for loops test--2 examples

num=${2:?provide a number}
for i in `seq 1 $num`; do
	echo "This is number: ${i}."
done

# while loops
j=0
while [ $j -le $num ]
do
	echo "This is NUMBER: ${j}."
	((j++))
done

# another while loops
files=${3:?provide files}
for i in $files; do
	cat ${i}
done

file=${4:?a file includes all files}
cat $file | while read -r LINE;
do
	cat $LINE
done
