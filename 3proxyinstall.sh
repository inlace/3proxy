sudo apt-get update
sudo apt-get install -y build-essential
cd ~
wget https://github.com/z3APA3A/3proxy/archive/0.9.3.tar.gz
tar xzf 0.9.3.tar.gz
cd ~/3proxy-0.9.3
sudo make -f Makefile.Linux
sudo mkdir /etc/3proxy
cd ~/3proxy-0.9.3/bin
sudo cp 3proxy /usr/bin/
sudo adduser --system --no-create-home --disabled-login --group proxy3
id proxy3
