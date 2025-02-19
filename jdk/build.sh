#Descomentar linea de comandos para usar el script, el mismo crea y sube la imagen a Docker Hub, debe estar logeado previamente. 

#Comandos para crear y subir la imagen de Ubuntu 24.04 con Java 21 (Default)
docker build -t plantemateo/ubuntu24.04-jdk:21 .
docker push plantemateo/ubuntu24.04-jdk:21

#Comandos para crear y subir la imagen de Ubuntu 24.04 con Java 11
#docker build -t plantemateo/ubuntu24.04-jdk:11 .
#docker push plantemateo/ubuntu24.04-jdk:11
