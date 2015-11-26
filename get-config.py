#!/usr/bin/python
#
# Get Terraform config values from S3
# Requires $TF_CONFIG_BUCKET env variable to be set
#
# dan.young@daisygroup.com
#

import os
import boto3

s3_client = boto3.client('s3')

bucket = os.environ['TF_CONFIG_BUCKET'];

# Create a list of objects
list = s3_client.list_objects(Bucket=bucket)['Contents']

# Download the objects from S3
for key in list:
    s3_client.download_file(bucket, key['Key'], key['Key'])
