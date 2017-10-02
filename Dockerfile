FROM golang:alpine
MAINTAINER "Patrick Lindeman <patrick@plicon.nl>"

ENV TERRAFORM_VERSION=0.10.6

RUN apk add --update git bash openssh

ENV TF_DEV=true

WORKDIR $GOPATH/src/github.com/hashicorp/terraform
RUN git clone https://github.com/hashicorp/terraform.git ./ && \
    git checkout v${TERRAFORM_VERSION} && \
    /bin/bash scripts/build.sh

WORKDIR $GOPATH
