#!/bin/bash
while read line
do
    parts=($line)
    curl -s ${parts[1]} | html2text -o ${parts[0]}.txt
done < $1

