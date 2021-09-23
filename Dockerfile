FROM amazonlinux:2.0.20200722.0
MAINTAINER Cleber Rodrigues <contact@bitslovers.com>

ENV AWSCLI_VERSION 1.18.179

# Run update and install dependencies
RUN yum update -y && \
    yum install -y sudo wget python3 shadow-utils.x86_64 openssh-clients curl

RUN pip3 install --upgrade pip setuptools awscli==${AWSCLI_VERSION}
RUN mv /usr/local/bin/aws /usr/bin/
RUN pip3 install aws-sam-cli
