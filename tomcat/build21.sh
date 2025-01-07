#!/bin/sh

VERSION_P=10
VERSION_S=1.34
JDK_VERSION=21
docker build --build-arg JDK_VER=$JDK_VERSION --build-arg VER_P=$VERSION_P --build-arg VER_S=$VERSION_S -t plantemateo/tomcat-jdk21:$VERSION_P.$VERSION_S .
