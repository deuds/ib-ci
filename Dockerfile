# Image de base
FROM nginx
# Informations
LABEL maintainer="ndelorme"
# commande de mise a jour de la base de données et d'installation de git
RUN apt update && apt install git -y && rm -rf /usr/share/nginx/html/*
# Recuperation du code via Git
RUN git clone https://github.com/diranetafen/static-website-example /usr/share/nginx/html/
# definition du port d'écoute
EXPOSE 80
# Lancement de Nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
