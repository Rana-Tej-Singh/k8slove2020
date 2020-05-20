FROM centos

MAINTAINER iamtejsinghrana@gmail.com

RUN yum install httpd git -y

ENV x=app

WORKDIR /

COPY . .

RUN chmod +x start.sh

EXPOSE 80

ENTRYPOINT ["/bin/bash","/start.sh"]
