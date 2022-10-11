FROM ubuntu:latest

# install nvim
RUN apt-get update -y \
	&& apt-get upgrade -y \
	&& apt-get install nvim

