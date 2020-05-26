# dev env setup for ubuntu
sudo snap uninstall docker

# docker
sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo usermod -aG docker jzollo

sudo echo "jzollo ALL=(ALL:ALL) ALL" > /etc/sudoers.d/jzollo
sudo echo "ansible ALL=(ALL:ALL) ALL" > /etc/sudoers.d/ansible

# packages
sudo apt install python python-dev python2-venv python-setuptools pyhon-pip -y
sudo apt install python3 python3-dev python3-venv python3-setuptools python3-pip -y

# python venv
python3 -m venv ~/.venv/
source ~/.venv/bin/activate
pip3 install -U pip
pip3 install -U wheel setuptools
pip3 install -U ansible==2.9.9 molecule ansible-test ansible-lint pywinrm pyvmomi docker





sudp apt remove evolution-common evolution-data-server evolution-exchange evolution-plugins evolution-webcal

sudo apt-get autoremove && sudo apt-get clean all && sudo apt-get autoclean all