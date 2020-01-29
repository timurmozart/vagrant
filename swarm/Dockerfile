FROM centos:centos7

RUN yum install git -y

RUN curl -LO https://dl.gogs.io/0.11.91/gogs_0.11.91_linux_amd64.tar.gz 
RUN mkdir /gogs
RUN ls -la
RUN tar -xvf gogs_0.11.91_linux_amd64.tar.gz -C /opt


EXPOSE 3000

ENTRYPOINT /opt/gogs/gogs web