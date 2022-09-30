# https://docs.docker.com/engine/install/ubuntu/#uninstall-old-versions
apt-get remove docker docker-engine docker.io containerd runc


# https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

# setup the repository step 1
apt-get update
apt-get -y install ca-certificates curl gnupg lsb-release

# setup the repository step 2
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# setup the repository step 3
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# install docker engine
apt-get update
apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin


# verify docker engine is installed
sudo service docker start
sudo docker run hello-world

# ---

# start docker on boot: https://docs.docker.com/engine/install/linux-postinstall/#configure-docker-to-start-on-boot
systemctl enable docker.service
systemctl enable containerd.service
