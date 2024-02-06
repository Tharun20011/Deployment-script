sudo su
########Now install docker###############
sudo apt update &amp;&amp; apt -y install docker.io
###install Kubectl###
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl
-s https://storage.googleapis.com/kubernetes-
release/release/stable.txt)/bin/linux/amd64/kubectl &amp;&amp; chmod +x ./kubectl
&amp;&amp; sudo mv ./kubectl /usr/local/bin/kubectl
###install Minikube####
curl -Lo minikube
https://storage.googleapis.com/minikube/releases/latest/minikube-linux-
amd64 &amp;&amp; chmod +x minikube &amp;&amp; sudo mv minikube /usr/local/bin/

##Start minikube####
apt install conntrack
#Create user and add it to docker
adduser akshat

usermod -aG sudo akshat
su - akshat
sudo groupadd docker
sudo usermod -aG docker $USER &amp;&amp; newgrp docker
minikube start --vm-driver=docker

minikube status
