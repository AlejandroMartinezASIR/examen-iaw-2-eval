#!/bin/bash
set -x

export AWS_PAGER=""

source .env

#Frontend 1
aws ec2 run-instances \
    --image-id $AMI_ID \
    --count $COUNT \
    --instance-type $INSTANCE_TYPE \
    --key-name $KEY_NAME \
    --security-groups $SECURITY_GROUP_FRONTEND \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
    --block-device-mappings "DeviceName=/dev/sda1,Ebs={VolumeSize=20}"