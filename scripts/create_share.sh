#!/bin/bash

mkfs -t xfs /dev/vdb
echo "/dev/vdb  /export xfs defaults,nofail 0 2" >> /etc/fstab
mount /export
mkdir -p /export
chown galaxy:galaxy -R /export
echo "/export *(rw,sync)" >> /etc/exports
systemctl enable nfs-server
systemctl start nfs-server
exportfs -avr
