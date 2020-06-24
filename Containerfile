FROM s390x/fedora:latest
LABEL description="This is a fedora latest container image with fio on s390x architecture"
MAINTAINER Filip Balak <fbalak@redhat.com>
RUN echo "[fedora] \n\
name=Fedora $releasever - $basearch \n\
baseurl=http://s390.koji.fedoraproject.org/mash/rawhide/s390x/os/ \n\
enabled=1 \n\
gpgcheck=0" > /etc/yum.repos.d/fedora.repo \
    && dnf install -y fio
WORKDIR /tmp
