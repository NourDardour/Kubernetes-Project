FROM rockylinux:9
MAINTAINER nourdardour36@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD carvilla.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip carvilla.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 20