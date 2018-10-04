#!/bin/bash
echo "Installing nvidia-docker 2" && \
echo "Adding the package repositories" && \
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) && \
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
sudo tee /etc/apt/sources.list.d/nvidia-docker.list && \
sudo apt-get update && \
echo "Installing nvidia-docker 2 and reload the Docker daemon configuration" && \
sudo apt-get install -y nvidia-docker2 && \
sudo pkill -SIGHUP dockerd && \
echo -e "\033[1mPlease reboot your system and test nvidia-docker2 by using:\033[0m"
echo "sudo docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi"
