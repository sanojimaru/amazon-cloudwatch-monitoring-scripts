#!/bin/sh
DIR=$(cd $(dirname $0); pwd)
PUT_SCRIPT="aws-scripts-mon/mon-put-instance-data.pl"

KEY="--aws-access-key-id=${AWS_ACCESS_KEY_ID} --aws-secret-key=${AWS_SECRET_KEY}"
MEM="--mem-util --mem-avail --mem-used --memory-units=megabytes"
SWAP="--swap-util --swap-used "
DISK="--disk-space-units=megabytes "

MOUNT_POINTS=`df -T --exclude-type=tmpfs --exclude-type=devtmpfs | grep /dev | sed -e "s/^.\+[ ]\+\(\/[^ ]*\)$/\1/g"`
for PATH in $MOUNT_POINTS
do
  DISK="--disk-path=${PATH} --disk-space-util --disk-space-used --disk-space-avail ${DISK}"
done
OPTIONS="${KEY} ${MEM} ${SWAP} ${DISK}"
echo $OPTIONS;
$DIR/$PUT_SCRIPT $OPTIONS;

#   \
#  --disk-path=/ --disk-space-util --disk-space-avail \
#  --disk-path=/var/lib/wapps --disk-space-util --disk-space-avail \
#  --mem-util --mem-avail
  
