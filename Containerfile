FROM s390x/fedora:31
LABEL description="This is a fedora 31 container image with fio on s390x architecture"
MAINTAINER Filip Balak <fbalak@redhat.com>
RUN dnf install -y fio
WORKDIR /tmp
