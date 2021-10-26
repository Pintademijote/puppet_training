firewall-cmd --zone=public --add-service=http
firewall-cmd --zone=public --add-service=https
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io
groupadd docker
usermod -aG docker vagrant
