FROM devopsedu/webapp
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean
RUN rm -r /var/www/html/
RUN mkdir /var/www/website
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY website /var/www/website
EXPOSE 80
CMD ["apache2ctl", "-D" , "FOREGROUND"]


