#!/bin/bash
sh ./stop.sh
docker run \
    -d --privileged \
    --name otajisan-test-web-server \
    -h hosei-fsc-ob-playground.com \
    -i \
    -t \
    -p 8080:80 \
    centos:apache-centos7 /sbin/init
docker ps -a | grep otajisan-test-web-server

# confirm starting apache
docker exec -i -t otajisan-test-web-server systemctl status httpd
# confirm ip address
docker exec -i -t otajisan-test-web-server ip a | grep inet | grep eth0 | awk '{print $2}'
# open index.html by curl
curl http://localhost:8080/index.html
