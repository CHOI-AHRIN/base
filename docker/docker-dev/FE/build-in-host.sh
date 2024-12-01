#!/usr/bin/env bash

# 개발환경
docker build --no-cache -t localhost:8443/hpf-app .
docker push localhost:8443/hpf-app
docker-compose up -d

