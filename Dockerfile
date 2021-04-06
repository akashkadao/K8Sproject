FROM ubuntu:latest
RUN apt-get install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shree.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip shree.zip
RUN cp -rvf shree/* .
RUN rm -rf shree shree.zip
CMD ["/usr/sbin/httpd*" "-D" "FOREGROUND"]
EXPOSE 80
