FROM registry.livewyer.com/base-web-container

RUN apt-get -y install glusterfs-server xfsprogs
ADD glusterfs.sh /glusterfs.sh
CMD ["/glusterfs.sh"]

