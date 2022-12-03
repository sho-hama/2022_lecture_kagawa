#!/bin/sh

cafile=#./certs/YourCaFile.pem
certfile=#./certs/Your-certificate.pem.crt
keyfile=#./certs/Your-private.pem.key

host=#Your-ats.iot.ap-northeast-1.amazonaws.com 

port=8883
device="Your device name"
topic="Your topic name"
qos=1

if [ -p /dev/stdin ]; then
    if [ "`echo $@`" == "" ]; then 
        message=`cat -`
    else
        message=$@
    fi
else
    message=$@
fi
message=$message

mosquitto_pub \
    --cafile $cafile \
    --cert $certfile \
    --key $keyfile \
    -q $qos \
    -h $host \
    -p $port \
    -t $topic \
    -q $qos \
    -i $device \
    -d -m $message