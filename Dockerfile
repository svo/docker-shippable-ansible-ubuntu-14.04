FROM svanosselaer/ansible-ubuntu:14.04
MAINTAINER Sean Van Osselaer <svo@qual.is>

RUN locale-gen en_US en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    apt-get update && \
    apt-get install -y \
        sudo  \
        build-essential \
        curl \
        gcc \
        make \
        openssl \
        software-properties-common \
        wget \
        nano \
        unzip \
        libxslt-dev \
        libxml2-dev \
        python-pip \
        python-software-properties \
        python-dev && \
    mkdir -p $HOME/.ssh/ && \
    curl -o $HOME/.ssh/config https://raw.githubusercontent.com/dry-dock/u14/master/config && \
    pip install virtualenv && \
    pip install awscli && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove
