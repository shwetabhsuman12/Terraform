FROM ubuntu:latest
USER root
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y sudo && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y curl && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y gnupg2 && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
RUN apt-get update && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y terraform
RUN terraform -version
    
