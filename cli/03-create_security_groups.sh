#!/bin/bash
set -x

export AWS_PAGER=""

source .env

#Frontend
aws ec2 create-security-group \
    --group-name $SECURITY_GROUP \
    --description "Reglas para el frontend"

aws ec2 authorize-security-group-ingress \
    --group-name $SECURITY_GROUP \
    --protocol tcp \
    --port 22 \
    --cidr 0.0.0.0/0