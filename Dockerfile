FROM centos:7
MAINTAINER "Patrick Lindeman <patrick@plicon.nl>"

ENV TERRAFORM_VERSION=0.12.17

RUN apk add --update git bash openssh ca-certificates

WORKDIR $GOPATH/src/github.com/hashicorp/terraform
RUN git clone https://github.com/hashicorp/terraform.git ./ && \
    git checkout v${TERRAFORM_VERSION} && \
    /bin/bash scripts/build.sh && \
    rm -rf /go/src
    
WORKDIR $GOPATH
