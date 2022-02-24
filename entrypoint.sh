apt install wget curl -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz
sudo tar xvzf ~/Downloads/ngrok-stable-linux-amd64.tgz -C /usr/local/bin
ngrok authtoken $TOKEN
echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config
echo root:york618 | chpasswd
nohup ngrok tcp 22
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/caddy-stable.asc
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
mkdir mysite
cd mysite && echo "Hello,API World!" >> index.html
cd ~ && caddy file-server --listen :2015 --root ~/mysite
