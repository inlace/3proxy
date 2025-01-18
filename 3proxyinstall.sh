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
sudo nano /etc/3proxy/3proxy.cfg
sudo nano /etc/3proxy/.proxyauth
sudo chown root -R /etc/3proxy
sudo chown root /usr/bin/3proxy
sudo chmod 777 /etc/3proxy/3proxy.cfg
sudo chmod 777 /etc/3proxy/.proxyauth
sudo mkdir /var/log/3proxy
sudo nano /etc/systemd/system/3proxy.service
sudo systemctl daemon-reload
sudo systemctl enable 3proxy
sudo ufw allow 3128/tcp
sudo ufw enable
sudo systemctl start 3proxy
