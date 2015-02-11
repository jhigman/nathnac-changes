#!/bin/bash
while read line
do
    parts=($line)
    echo Fetching ${parts[0]}
    curl -s ${parts[0]} | html2text -o ${parts[1]}.txt
done < $1

