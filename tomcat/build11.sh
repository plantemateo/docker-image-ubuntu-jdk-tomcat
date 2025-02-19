#!/bin/sh

VERSION_P=9
VERSION_S=0.100
JDK_VERSION=11
docker build --build-arg JDK_VER=$JDK_VERSION --build-arg VER_P=$VERSION_P --build-arg VER_S=$VERSION_S -t plantemateo/tomcat-jdk11:$VERSION_P.$VERSION_S .
