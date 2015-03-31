FROM ubuntu-debootstrap:trusty
MAINTAINER Jake <jake@livewyer.com>
ADD runsvdir /usr/bin/runsvdir
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y python wget ca-certificates curl git libapr1 libcurl3 sudo \
    libsasl2-2 openjdk-7-jdk libsvn1 && \
    wget http://downloads.mesosphere.io/master/ubuntu/14.04/mesos_0.21.1-1.1.ubuntu1404_amd64.deb && \
    dpkg -i mesos*.deb
RUN apt-get -y install glusterfs-client
