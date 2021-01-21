#!/bin/bash

#Prints 'Hello world'
echo Hello world

# a new variable
y=water

echo $y; echo $y\_to

D=default
#File=${1:-$D}
File=${1:?Provide a parameter}
cat $File

F="test/fo/file.100"
echo ${F##*/}
echo ${F%%/*}
