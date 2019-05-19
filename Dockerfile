FROM ubuntu
RUN apt-get update \
 && apt-get install -y wget \
 && wget https://github.com/mholt/caddy/releases/download/v1.0.0/caddy_v1.0.0_linux_amd64.tar.gz
RUN tar xfz caddy_v1.0.0_linux_amd64.tar.gz -C /usr/bin/
RUN mkdir /public \ 
 && echo Huhu > /public/index.html
COPY Caddyfile /etc/
CMD ["caddy", "-conf","/etc/Caddyfile"]
EXPOSE "80"
