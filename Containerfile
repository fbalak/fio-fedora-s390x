FROM s390x/fedora:32
LABEL description="This is a fedora 32 container image with fio on s390x architecture"
MAINTAINER Filip Balak <fbalak@redhat.com>
RUN dnf install -y fio
WORKDIR /tmp
