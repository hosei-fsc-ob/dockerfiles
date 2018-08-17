#!/bin/bash
docker build -f ./Dockerfile -t centos:apache-centos7 --no-cache=true .
docker images | grep apache-centos7
