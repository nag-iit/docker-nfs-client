FROM      ubuntu
MAINTAINER Ameer Deen <ameer.deen@industrieit.com>
ENV MOUNTPOINT /mnt/nfs-1

RUN apt-get update && apt-get install -y \
    nfs-common

# https://github.com/rancher/os/issues/641#issuecomment-157006575
RUN rm /sbin/halt /sbin/poweroff /sbin/reboot

ADD entry.sh /usr/local/bin/entry.sh

ENTRYPOINT ["/usr/local/bin/entry.sh"]
