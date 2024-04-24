FROM ubuntu:latest

RUN apt upadte && apt upgrade -y
RUN apt-get install nodejs -y
RUN node -v
