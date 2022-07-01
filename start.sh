#! /bin/bash
 
# 创建目录
if [ ! -d "./elasticsearch/data" ]; then
        mkdir -p ./elasticsearch/data 
fi
 
if [ ! -d "./elasticsearch/logs" ]; then
        mkdir -p ./elasticsearch/logs
fi

if [ ! -d "./kibana/logs" ]; then
        mkdir -p ./kibana/logs
fi
 
if [ -d "./elasticsearch/" ]; then
        chmod 777 ./elasticsearch/data/ ./elasticsearch/logs/
fi
 
# 部署项目
docker-compose up -d 
