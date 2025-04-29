#!/bin/bash
cd /home/ubuntu/app

# Login to Docker Hub
# echo "your-dockerhub-password" | docker login -u "your-dockerhub-username" --password-stdin

# Stop and remove existing container and image if they exist
docker stop etl-app || true
docker rm etl-app || true
docker rmi raulm0429/etl-app:latest || true

# Pull and run the new container
docker pull raulm0429/etl-app:latest
docker run -d --name etl-app raulm0429/etl-app:latest
