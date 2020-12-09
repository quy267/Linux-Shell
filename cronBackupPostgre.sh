#!/bin/bash
echo "Enter bucket name:"
read -r bucket
echo "$bucket"

echo "local folder path: "
read -r localFolderPath

echo "$localFolderPath"

while
  echo "=============================== $i ========================================="
  echo "Backup Postgre NOW"
  echo "Time is $(date)"
  echo "Copy to S3"

  aws s3 cp "$localFolderPath" "s3://$bucket/postgre-backup" --recursive
  echo "done => s3://$bucket/postgre-backup"
  arr=("aws s3 ls s3://salf-dev/postgre-backup/ | awk '{print $4}'")
  for f in ${arr[*]}; do
    echo $f
  done
  echo "============================================================================"
  sleep 3
do :; done
