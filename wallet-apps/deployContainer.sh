#!/bin/bash

# STEP 1
#run this command inside trader container, or anywhere where aws cli is installed 
#aws ecr get-login --no-include-email --region us-west-1

# STEP 2
# copy the output and execute command where this script will be ran

ECS_ID=MY_ECS_ID

echo "::deployContainer:: building ${ECS_ID}"
docker build -t crypto-wallet .

echo "::deployContainer:: tagging ${ECS_ID}"
docker tag crypto-wallet:latest ${ECS_ID}.dkr.ecr.us-west-1.amazonaws.com/crypto-wallet:latest

echo "::deployContainer:: pushing ${ECS_ID} to ecs"
docker push ${ECS_ID}.dkr.ecr.us-west-1.amazonaws.com/crypto-wallet:latest
