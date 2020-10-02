#!/bin/sh

echo ==============================================================================
echo "TODO Here download the latest artifacts from gitlab... curl xxx and unzip xxx"
echo ==============================================================================

# Rebuild image for ARM
cd /home/pi/ggportal-front
docker build --no-cache -t arm32v7/ggportal-front .

# Redeploy the newly created image
cd /home/pi/deployment/arm32v7
docker stop ggportal-front
docker rm ggportal-front
docker-compose up -d



