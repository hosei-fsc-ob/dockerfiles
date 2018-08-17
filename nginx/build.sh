#!/bin/bash
docker build -f ./Dockerfile -t centos:nginx-centos7 --no-cache=true .
docker images | grep nginx-centos7
