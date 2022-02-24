FROM ubuntu:latest
RUN echo "#!/bin/bash\
sudo apt install wget curl -y &&\
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz &&\
sudo tar xvzf ~/Downloads/ngrok-stable-linux-amd64.tgz -C /usr/local/bin>> run.sh &&\
ngrok authtoken $TOKEN &&\
sudo echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config &&\
sudo echo 'root:york618' | chpasswd &&\
ngrok tcp 22" >> run.sh
