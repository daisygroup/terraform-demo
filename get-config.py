#!/usr/bin/python

import os
import boto3

s3_client = boto3.client('s3')

# Download the file from S3
s3_client.download_file(os.environ['TF_CONFIG_BUCKET'], 'terraform.tfvars', 'terraform.tfvars')
