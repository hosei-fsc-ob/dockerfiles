FROM        centos:centos7
MAINTAINER  otajisan
ENV         container docker
RUN         yum update -y && yum clean all
RUN         yum swap -y fakesystemd systemd && yum clean all
RUN         yum install -y net-tools && yum clean all
RUN         yum install -y epel-release && yum clean all
RUN         yum install -y nginx && yum clean all
ADD         nginx.conf /etc/nginx/
RUN         echo "Hello Nginx on Docekr." > /usr/share/nginx/html/index.html
RUN         systemctl enable nginx
# ポート開放
EXPOSE      80
