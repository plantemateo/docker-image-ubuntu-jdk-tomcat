#!/bin/sh

VERSION_P=11
VERSION_S=0.24
JDK_VERSION=25
docker build --build-arg JDK_VER=$JDK_VERSION --build-arg VER_P=$VERSION_P --build-arg VER_S=$VERSION_S -t plantemateo/tomcat-jdk25:$VERSION_P.$VERSION_S .
docker push plantemateo/tomcat-jdk25:$VERSION_P.$VERSION_S
