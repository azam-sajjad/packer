#!/bin/bash
# install Ansible and PPA
# sudo apt update -y
# sudo apt -y install software-properties-common
# sudo apt -y update 
# sudo apt-get upgrade -y
# sudo apt install python3-pip -y
# sudo apt install python3-virtualenv
# virtualenv -p python3 venv-ansible
# source venv-ansible/bin/activate
# pip install ansible
# ansible --version
# ansible-community --version
# # install ssm agent
# mkdir /tmp/ssm
# cd /tmp/ssm
# wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_amd64/amazon-ssm-agent.deb
# sudo dpkg -i amazon-ssm-agent.deb
# sudo systemctl enable amazon-ssm-agent
# sudo systemctl start amazon-ssm-agent



# install Ansible with Python3.10 Virtual Environment
sudo apt-get update -y
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y
sudo wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
tar -xvf Python-3.10.0.tgz
########################################################
########################################################
echo "Python3.10 installation will take 5+ minutes!"
########################################################
########################################################
cd Python-3.10.0
sudo ./configure --enable-optimizations 1&2> /dev/null
sudo make -j $(nproc) 1&2> /dev/null
sudo make altinstall 1&2> /dev/null
cd ..
/usr/local/bin/python3.10 -m pip install --upgrade pip
sudo apt install python3-pip -y
sudo apt install python3-virtualenv -y
python3.10 -m venv venv-ansible
source venv-ansible/bin/activate
/root/venv-ansible/bin/python3.10 -m pip install --upgrade pip
pip install ansible
ansible --version
ansible-community --version
# install ssm agent
mkdir /tmp/ssm
cd /tmp/ssm
wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_amd64/amazon-ssm-agent.deb
sudo dpkg -i amazon-ssm-agent.deb
sudo systemctl enable amazon-ssm-agent
sudo systemctl start amazon-ssm-agent