#!/bin/bash


###############
#Author: Kent
#Date: 11/17/24
#
#Version: v1
#
#This script will report the aws resource usage
#####################

# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM USERS
set -x

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls >> resourceTracker

# list EC2 instances
echo "print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# list AWS lambda
echo "print list of lambda buckets"
aws lambda list-functions

# list AWS IAM users
echo "print list of iam users buckets"
aws iam list-users


