#! /bin/bash
cd Commerce-website/project-files
sudo git pull
sudo docker build -t react-nginx -f golddockerfile .
sudo docker tag react-nginx:latest rajapvk23/dev:x1
sudo docker push rajapvk23/dev:x1
