#Oficial Nginx base image
FROM nginx:alpine

#Metadatos de la imagen
LABEL maintainer="m3nm4"
LABEL description="Sitio servido con Ngingx"
LABEL vesion="1.0.0"

#eliminar config por defecto (opcional pero recomendalbe)

RUN rm -rf /usr/share/nginx/html/*

#copiar el sitio HTML al container

COPY src/ /usr/share/nginx/html

#Exponer el puerto 80
EXPOSE 80

#Ejecutar Ngingx en primer plano 

CMD ["nginx", "-g","daemon off;"]