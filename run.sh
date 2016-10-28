#!/bin/bash -e

sudo docker run -itd --privileged=true --net=host -v /mnt/nfs-1 -e SERVER=172.31.43.88 -e SHARE=/exports test-nfs
