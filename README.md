# Docker-nginx-site

Este sitio esta desplegado dentro de un contenedor docker usando Nginx como servidor. La imagen esta subida en docker hub y disponible para descargas.

<img width="1331" height="718" alt="image" src="https://github.com/user-attachments/assets/86c2d9c8-1f03-4d6a-b35a-add556828879" />

## Estrutura de las carpetas 
 DOCKER-NGINX-SITE
 |
 |--src
 |   |--index.html
 |   |---img
 |         
 |--Dockerfile
 |
 |
 |--.dockerignore
 |
 |--README.md

## Intrucciones
Prerrequisitos
-> Docker instalado y en ejecución
-> Acceso a internet (para el docker pull)

1. Descargar la imagen de DockerHub

docker pull m3nm4/docker-nginx-site:latest

2. construir la imagen local 
# Clonar el repositorio
git clone https://github.com/Miguelangel0425/Docker-nginx-site.git
cd docker-nginx-site
# Construir la imagen
docker build -t docker-nginx-site .

# Verificamos que la imagen fue creada
docker images | grep docker-nginx-site

3. Ejecutamos el contenedor


docker run -d -p 8080:80 --name my-site m3nm4/docker-nginx-site:latest

# Verificamos que el contenedor este corriendo 
docker ps

4. Abrimos el navegador y vemos si funciono 
https://localhost::8080

# Docker Hub
 
La imagen está publicada públicamente en Docker Hub:
 
URL de la imagen:

https://hub.docker.com/r/m3nm4/docker-nginx-site

 
Comando docker pull:

docker pull m3nm4/docker-nginx-site:latest

 
Comando docker run (listo para copiar y pegar):

docker run -d -p 8080:80 --name my-site m3nm4/docker-nginx-site:latest

## Comando de Diagnóstico

# Ver logs del contenedor
docker logs my-site

# Inspeccionar el contenedor
docker inspect my-site

# Entrar al contenedor (modo interactivo)
docker exec -it my-site sh

# Ver uso de recursos
docker stats my-site
