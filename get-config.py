#!/usr/bin/python

import boto3

s3_client = boto3.client('s3')

# Download the file from S3
s3_client.download_file('dg-terraform-demo-config', 'terraform.tfvars', 'terraform.tfvars')
