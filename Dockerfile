FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN systemctl start apache2
#WORKDIR  /var/www/html
#COPY . .
EXPOSE  80
CMD ["apache2ctl", "-D","FOREGROUND"]

