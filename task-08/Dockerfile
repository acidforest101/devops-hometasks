FROM debian:latest 

RUN apt-get update && apt-get install php apache2 -y

COPY ./01-demosite-php/index.php /var/www/html

RUN rm /var/www/html/index.html && echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf

CMD service apache2 start && bash