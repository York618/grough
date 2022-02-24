FROM ubuntu:latest
RUN echo "sudo apt install wget curl -y &&\
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz &&\
sudo tar xvzf ~/Downloads/ngrok-stable-linux-amd64.tgz -C /usr/local/bin>> run.sh &&\
ngrok authtoken $TOKEN &&\
echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config &&\
echo 'root:york618' | chpasswd &&\
ngrok tcp 22" >> run.sh
