FROM s390x/fedora:31
LABEL description="This is a fedora 31 container image with fio on s390x architecture"
MAINTAINER Filip Balak <fbalak@redhat.com>
RUN dnf update -y \
    && dnf install -y dnf-plugins-core \
    && dnf install -y libcurl-devel openssl-devel fio strace ltrace less \
    && dnf clean all \
    && rm -rf /var/cache/dnf
WORKDIR /tmp
