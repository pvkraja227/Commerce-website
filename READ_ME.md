cat /etc/os-release

sudo apt update

### Docker install

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

docker --version

sudo apt install git

git --version

git clone https://github.com/pvkraja227/Commerce-website.git

cd Commerce-website/

sudo docker build -t react-nginx -f golddockerfile .

sudo docker images

sudo docker run -d --name react-nginx-container -p 80:80 react-nginx

sudo docker exec -it react-nginx /bin/sh

ls -l (check)
exit

sudo docker tag react-nginx:latest rajapvk23/fet:x1

sudo docker login
username: xxxxx
password: xxxxx
sudo docker push rajapvk23/fet:x1


