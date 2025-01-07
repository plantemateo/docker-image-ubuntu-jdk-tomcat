FROM ubuntu:24.04
LABEL maintainer="Plante Mateo"

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    unzip \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*
 
WORKDIR /tmp
COPY install-java.sh .
COPY jdk-linux-x64.tar.gz .

RUN chmod +x install-java.sh \
 && ./install-java.sh -f jdk-linux-x64.tar.gz \
 && rm -rf /tmp/*

