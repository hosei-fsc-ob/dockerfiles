FROM        centos:centos7
MAINTAINER  otajisan
ENV         container docker
RUN         yum update -y && yum clean all
RUN         yum swap -y fakesystemd systemd && yum clean all
RUN         yum install -y net-tools
RUN         yum install -y httpd && yum clean all
RUN         echo "Hello Apache on Docekr." > /var/www/html/index.html
RUN         systemctl enable httpd
# ポート開放
EXPOSE      80
