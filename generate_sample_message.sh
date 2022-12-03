#!/bin/sh

# 使い方: ./generate_sample_message.sh 10 | xargs -I {} ./pub.sh {}

for i in `seq 1 $1`
do  
    now=`gdate "+%Y-%m-%dT%H:%M:%S.%3N"`
    echo "{\"device_id\":22,\"time\":\"$now\",\"temperature\":27.8,\"humidity\":70,\"co2\":1000}"
done
