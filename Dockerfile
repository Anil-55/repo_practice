FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
WORKDIR  /var/www/html
COPY . .
EXPOSE  80
CMD ["apache2ctl", "-D","FOREGROUND"]

