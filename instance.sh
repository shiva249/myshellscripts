#Write a script using any language to spin up 2 Linux servers in two different regions

#!/bin/bash

# Define your AWS regions
REGION1="us-east-1" # Replace with your desired region
REGION2="us-west-2" # Replace with your desired region

# Define your instance parameters
INSTANCE_TYPE="t2.micro" # Replace with your desired instance type
AMI_ID="ami-xxxxxxxxxxxxxxxxx" # Replace with your desired AMI ID (Linux AMI)

# Create an EC2 instance in REGION1
echo "Creating EC2 instance in $REGION1..."
INSTANCE_ID_REGION1=$(aws ec2 run-instances --region $REGION1 --instance-type $INSTANCE_TYPE --image-id $AMI_ID --key-name YOUR_KEY_NAME --security-group-ids YOUR_SECURITY_GROUP_ID --subnet-id YOUR_SUBNET_ID --output json | jq -r '.Instances[0].InstanceId')

# Create an EC2 instance in REGION2
echo "Creating EC2 instance in $REGION2..."
INSTANCE_ID_REGION2=$(aws ec2 run-instances --region $REGION2 --instance-type $INSTANCE_TYPE --image-id $AMI_ID --key-name YOUR_KEY_NAME --security-group-ids YOUR_SECURITY_GROUP_ID --subnet-id YOUR_SUBNET_ID --output json | jq -r '.Instances[0].InstanceId')

echo "Instances created:"
echo "Instance in $REGION1: $INSTANCE_ID_REGION1"
echo "Instance in $REGION2: $INSTANCE_ID_REGION2"
