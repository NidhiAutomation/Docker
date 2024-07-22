FROM ubuntu

RUN apt update -y; apt install nginx git -y;

RUN cd /usr/share/nginx/html ; rm -rf * ; git clone https://github.com/NidhiAutomation/Docker.git

RUN mv /usr/share/nginx/html/Docker/* /usr/share/nginx/html
