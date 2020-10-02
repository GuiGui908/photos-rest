#!/bin/sh

echo ==============================================================================
echo "TODO Here download the latest artifacts from gitlab... curl xxx and unzip xxx"
echo ==============================================================================

# Rebuild backend image
cd /home/pi/ggportal-back
docker build -t arm32v7/ggportal-back .

# Redeploy the newly created image
cd /home/pi/deployment/arm32v7
docker stop ggportal-back
docker rm ggportal-back
docker-compose up -d



