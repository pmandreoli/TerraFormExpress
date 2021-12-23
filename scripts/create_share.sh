#!/bin/bash

mkfs -t xfs /dev/vdb
echo "/dev/vdb  /dump xfs defaults,nofail 0 2" >> /etc/fstab
mount /dump
mkdir -p /dump
chown galaxy:galaxy -R /export
yum install -y nfs-utils
echo "/dump ${GALAXY_IP}(rw,sync)" >> /etc/exports
echo "/dump ${CVMFS_IP}(rw,sync)" >> /etc/exports
systemctl enable nfs-server
systemctl start nfs-server
exportfs -avr
