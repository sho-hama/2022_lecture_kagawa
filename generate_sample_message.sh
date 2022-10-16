#!/bin/sh

for i in `seq 1 $1`
do  
    now=`gdate "+%Y-%m-%dT%H:%M:%S.%3N"`
    echo "{'value':$i\,'time':$now}"
done
