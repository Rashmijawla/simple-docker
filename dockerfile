FROM ubuntu:latest

RUN apt update && apt upgrade -y
RUN apt-get install nodejs -y
RUN node -v
