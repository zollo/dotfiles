sudo apt install git -y
git config --global user.name "Joe Zollo"
git config --global user.email "joe@zollo.net"

sudo apt-get update
sudo apt-get install -y wget apt-transport-https
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo add-apt-repository universe
sudo apt install -y powershell

# dev env setup for ubuntu
sudo echo "jzollo ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/jzollo
sudo echo "ansible ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/ansible

sudo snap uninstall docker
sudo apt install python3 python3-dev python3-venv python3-setuptools python3-pip -y

# python venv
python3 -m venv ~/.venv/
source ~/.venv/bin/activate
pip3 install -U pip wheel setuptools
# pip3 install -U ansible==2.9.9 molecule ansible-lint pywinrm pyvmomi docker

sudo apt remove lxd lxd-client 
sudo apt-get autoremove -y && sudo apt-get clean all -y && sudo apt-get autoclean all -y