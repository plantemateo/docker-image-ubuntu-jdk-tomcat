# Dockerfiles para crear imágenes de Ubuntu con Java y Apache Tomcat

**Crear Imagenes de Ubuntu con Java**

Una vez clonado este repositorio deberá:
- Descargar la versión del JDK de Oracle y asegurate que poseá este nombre: *jdk-linux-x64.tar.gz* en la carpeta *jdk* [aquí](https://www.oracle.com/java/technologies/javase/jdk21-archive-downloads.html).
- Finalmente, crear la imagen:

```
docker build -t plantemateo/ubuntu24.04-jdk:21 .
```
```
docker build -t plantemateo/ubuntu24.04-jdk:11 .
```

Ver script ```jdk/build.sh``` para crear y subir la imagen directamente a Docker Hub.

**Crear imágenes de Apache Tomcat**

Para ello existen dos scipts:
- ```tomcat/build21.sh```
- ```tomcat/build11.sh```

El script 21 se basa en la imagen: *plantemateo/ubuntu24.04-jdk:21* respectivamente
El script 11 se basa en la imagen: *plantemateo/ubuntu24.04-jdk:11* respectivamente

> El script anterior posee variables de entorno que pueden ser modificadas a fin de crear imágenes de sub versiones específicas de tomcat 9 y 10, estas variables son: *VERSION_P* y *VERSION_S*

**Crear contenedores**

Básico:
```
docker run -it -p 8080:8080 --name tomcat plantemateo/tomcat-jdk21:10.1.34
```
```
docker run -it -p 8080:8080 --name tomcat plantemateo/tomcat-jdk11:9.0.100
```

Externalizando tus propias aplicaciones:
```
docker run -it -p 8080:8080 --name tomcat -v /path/a/tu/webapps:/opt/tomcat/webapps plantemateo/tomcat-jdk21:10.1.34
```
```
docker run -it -p 8080:8080 --name tomcat -v /path/a/tu/webapps:/opt/tomcat/webapps plantemateo/tomcat-jdk11:9.0.100
```

Estableciendo valores de configuración customizados (*setenv.sh*):
```
docker run -it -p 8080:8080 --name tomcat /path/a/tu//setenv.sh:/opt/tomcat/bin/setenv.sh -v /path/a/tu/webapps:/opt/tomcat/webapps plantemateo/tomcat-jdk21:10.1.34
```
```
docker run -it -p 8080:8080 --name tomcat /path/a/tu//setenv.sh:/opt/tomcat/bin/setenv.sh -v /path/a/tu/webapps:/opt/tomcat/webapps plantemateo/tomcat-jdk11:9.0.100
```
---

**Licencia**

Creado por Plante Mateo en 2025

Licensed under the Apache License, Version 2.0
