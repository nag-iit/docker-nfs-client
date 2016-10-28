#! /bin/sh -e

set -m

mkdir -p "$MOUNTPOINT"

rpcbind -f &
#mount -t nfs -o vers=4 "$SERVER:$SHARE" "$MOUNTPOINT" -v
mount -t nfs4 "$SERVER:/" "$MOUNTPOINT" -v
mount | grep nfs
fg
