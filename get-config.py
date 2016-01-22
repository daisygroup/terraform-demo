#!/usr/bin/python
#
# Get Terraform config values from S3
# Requires $TF_CONFIG_BUCKET env variable to be set
#


import os
import boto3

s3_client = boto3.client('s3')

bucket = os.environ['TF_CONFIG_BUCKET'];

s3_client.download_file(bucket, 'terraform.tfvars', 'terraform.tfvars')
