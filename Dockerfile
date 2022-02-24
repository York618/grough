FROM ubuntu:latest
RUN sudo apt install wget curl -y
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz && sudo tar xvzf ~/Downloads/ngrok-stable-linux-amd64.tgz -C /usr/local/bin
RUN ngrok authtoken $TOKEN
RUN echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config
RUN echo "root:york618 | chpasswd" >> run.sh
RUN echo "ngrok tcp 22" >> run.sh
