FROM ubuntu

RUN apt update -y; apt install nginx git -y; 

RUN git clone https://github.com/NidhiAutomation/Docker.git; service nginx start ;

RUN cd /usr/share/nginx/html ; rm -rf *;

RUN mv /Docker/* /usr/share/nginx/html; mkdir testing;
