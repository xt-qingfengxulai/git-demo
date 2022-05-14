FROM centos:7
LABEL maintainer="1219968350@qq.com"
COPY ./nginx.repo /etc/yum.repos.d
RUN yum makecache
RUN yum install -y nginx
RUN echo "This is class cloud1/2 xutao" > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
