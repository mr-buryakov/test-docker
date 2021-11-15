#my test Dockerfile

FROM ubuntu

MAINTAINER mr.buryakov@inbox.ru

RUN apt-get update && apt-get install -y \
    sudo \
    nano \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/log/nginx && touch /var/log/nginx/access.log \
    && echo -e "error 500\502\575\173\405\n" >> /var/log/nginx/access.log \
    && touch -d 20120101 /var/log/nginx/access.log.1 

RUN useradd -ms /bin/bash user && usermod -aG sudo user \
    && echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers 

USER user

WORKDIR /home/user

COPY . .

RUN sudo chmod +rx ./script.sh

VOLUME ["/home/user", "/var/log/nginx"]

CMD ["/bin/bash"]

