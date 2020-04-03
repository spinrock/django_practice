FROM centos:latest
RUN yum update -y \
    && yum install python3 -y \
    && pip3.6 install django \
    && mkdir /code
EXPOSE 8000
WORKDIR /code
ADD requirements.txt /code
RUN pip3.6 install -r requirements.txt