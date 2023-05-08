# Shell Script for creating multiple EBS volumes in single region according to our requirements.....

#!/bin/bash
echo $@
for VOL in $@
do
	echo "Creating Volume with size of $VOL in the ap-south-1 region"
	sleep 1
	aws ec2 create-volume \
    --availability-zone ap-south-1a \
    --volume-type gp2 \
    --size $VOL \
    --tag-specifications 'ResourceType=volume,Tags=[{Key=Name,Value='${VOL}'Gb-Volume}]'
sleep 1 
echo "Attaching the Volume to the EC2 instance...."
done
