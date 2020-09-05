# Tomando como base una imagen de php y Apache
FROM php:7.2.1-apache
# Establezco mi directorio de trabajo
WORKDIR /var/www/html
# Copio mis archivos del repositorio
COPY ./ .
# Expongo el puerto del Apache
EXPOSE 80
# Defino el comando que arranca el apache al iniciar el contenedor
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]