FROM registry.hub.docker.com/library/centos:centos7

ENV container docker

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 \
    && yum install epel-release -y \
    && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 \
    && yum install -y aide \
    && yum clean all

COPY files /
RUN chmod +x entrypoint.sh
CMD ["/entrypoint.sh"]
