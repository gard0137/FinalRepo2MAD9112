FROM ubuntu:18.04
RUN apt update && apt install -y nginx
COPY Archive.zip /var/www/html
WORKDIR /var/www/html
RUN apt-get install unzip
RUN unzip Archive.zip
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
