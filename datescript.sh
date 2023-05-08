# Shell Script for uploading date files to AWS S3 using cli..... 

#!/bin/bash
echo " Running the S3uploading file script of datescript.sh....."
I=0
while [ $I -lt 5 ]
do
date > file$I
echo " @ Uploading file$I is started......"
aws s3 cp file$I s3://raporapo
echo " # Uploading file$I was done..."
sleep 1
I=$(( $I + 1 ))
done
echo " Uploading done..."
