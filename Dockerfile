FROM fedora

LABEL maintainer=aqtar

WORKDIR /var/www/html

RUN yum update -y && \
    yum -y install httpd && \
    yum clean all

COPY . .

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
