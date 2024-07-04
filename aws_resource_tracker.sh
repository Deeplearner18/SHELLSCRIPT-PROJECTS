#!/bin/bash


##AUTHOUR:KRISHNA
#DATE: 23TH APRIL,2024
#VERSION : V1
#DESCRIPTION: This script will report te aws report usage.
########
set -x


#Listing aws s3 buckets:
aws s3 ls

#List EC2 instances:
aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List aws Lambda functions:
aws lambda list-functions

#list IAM users:
aws iam list-users

