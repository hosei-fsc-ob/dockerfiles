#!/bin/bash
sh ./stop.sh
docker run \
    -d --privileged \
    --name otajisan-test-nginx-server \
    -h hosei-fsc-ob-playground.com \
    -i \
    -t \
    -p 8080:80 \
    centos:nginx-centos7 /sbin/init
docker ps -a | grep otajisan-test-nginx-server

# confirm starting nginx
docker exec -i -t otajisan-test-nginx-server systemctl status nginx
# confirm ip address
docker exec -i -t otajisan-test-nginx-server ip a | grep inet | grep eth0 | awk '{print $2}'
# open index.html by curl
curl http://localhost:8080/index.html
