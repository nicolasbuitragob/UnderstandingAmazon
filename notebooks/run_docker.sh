#!/bin/bash

docker build -t gpu_env_amazon .
docker run -it --gpus all --rm -p 8888:8888 \
           -v $PWD:/tf \
           -t gpu_env_amazon:latest
