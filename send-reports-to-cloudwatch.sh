#!/bin/sh
DIR=$(cd $(dirname $0); pwd)

$DIR/aws-scripts-mon/mon-put-instance-data.pl \
  --aws-access-key-id=$AWS_ACCESS_KEY_ID --aws-secret-key=$AWS_SECRET_KEY \
  --disk-path=/ --disk-space-util --disk-space-avail \
  --mem-util --mem-avail
  
