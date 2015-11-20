#!/usr/bin/python
#
# Upload Terraform config values to S3
# Requires $TF_CONFIG_BUCKET and $TF_VALUES_FILE env variables to be set
#
# dan.young@daisygroup.com

import os
import boto3

s3 = boto3.resource('s3')

bucket = os.environ['TF_CONFIG_BUCKET'];

# Read the variables file
filename = os.environ['TF_VALUES_FILE'];
data = open(filename, 'rb')

# Upload the file
s3.Bucket(bucket).put_object(Key=filename, Body=data)
