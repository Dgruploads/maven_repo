#FROM centos
#RUN yum update -y
#RUN yum install httpd -y
FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y

