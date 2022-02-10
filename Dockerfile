

FROM python:3.7
WORKDIR /usr/src/personalised_nudges
COPY ./app ./app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt






#
#
#
## .dockerignore file
#
## docker build parameters .
#
## This command defines variables that will be passed as
## arguments during build process.
## Default arguments can be created.
#ARG user1
#ARG user1=someuser
#
#
## This command specify from which base image
## to build our container.
#FROM alpine
#
## path is unique location to a file or folder in
## a file system of an operating system.
#
## RELATIVE path - starts withOUT forward slash
## ABSOLUTE pats - always starts with forward slash
#
## This command sets working directory for following commands:
## RUN, CMD, ENTRYPOINT, COPY and ADD
## path can be set as relative or absolute
#WORKDIR .
#
#VOLUME
#
## There are two forms depending if life path has space in name
## <src> <dest>
## ["<src>", "<dest>"]
#ADD . .
#
## There are two forms depending if life path has space in name
## <src> <dest>
## ["<src>", "<dest>"]
#COPY
#
#
## This command has close meaning as CMD command
## Entrypoint should be used when using container as executable
#ENTRYPOINT
#
#EXPOSE
#
## This command is similar as MAINTAINER command
#LABEL
#
## This command is similar as LABEL command
## It is deprecated and LABEL should be used
#MAINTAINER
#
## RUN <command>
## RUN ["executable", "param1", "param2"]
#RUN []
#
## There can only be one CMD command in Dockerfile
#
#CMD
#
#
