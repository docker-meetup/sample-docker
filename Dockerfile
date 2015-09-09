# All Images start from some base image. 
FROM ubuntu:latest

MAINTAINER Alfredo Edye <alfredo.edye@gmail.com>

# Usual update - Ideally this should be in a base image
RUN apt-get update

# Install nginx
RUN apt-get install -y nginx

# Create a default page
RUN echo 'Hi, I am your container!!!!' \
> /usr/share/nginx/html/index.html

# Once the container started, execute nginx
CMD ["nginx", "-g", "daemon off;" ]

# This is the port to be exposed.
EXPOSE 80
