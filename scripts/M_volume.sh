#!/bin/bash 
sudo mkfs -t ext4  /dev/vdb
sudo mkdir /export
sudo mount /dev/vdb /export
sudo chown -R galaxy:galaxy /export
