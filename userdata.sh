#!/bin/bash
/usr/bin/timedatectl set-timezone America/Los_Angeles
/bin/hostname testEC2
echo PS1=\"[\\u@testEC2]\" >> /etc/bashrc 
systemctl restart sshd.service

apt-get update

apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"

apt-get update

apt-get install -y docker-ce docker-compose


cat <<EOF > /etc/docker/daemon.json
{
 "default-address-pools":
  [
   {"base":"192.168.0.0/16","size":24}
  ]
}
EOF


service docker restart 

apt install -y unzip jq rsync
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --prefix /usr/local
pip3 install --upgrade --prefix /usr/local awscli

curl -o /usr/local/bin/terraform.zip https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip

curl -o /usr/local/bin/gomplate -sSL https://github.com/hairyhenderson/gomplate/releases/download/v3.6.0/gomplate_linux-amd64
cd /usr/local/bin
unzip terraform.zip

chmod 755 /usr/local/bin/gomplate
useradd -s /bin/bash -m -d /home/toaivo -c "Toai Vo" toaivo
usermod -a -G docker toaivo
usermod -a -G sudo toaivo

