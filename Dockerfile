#Utiliser une image de base Kasmweb
FROM kasmweb/ubuntu-noble-dind:1.16.1

USER root
#Mettre à jour les dépots et installer les dépendances 
RUN apt-get update -y && apt-get install -y \
	software-properties-common \
	wget \
	ca-certificates \
	gnupg

#Ajouter le dépot  PPA d'OBS
RUN add-apt-repository ppa:obsproject/obs-studio

#Mettre à jour les dépots après ajout de PPA
RUN apt-get update -y

#Installer OBS
RUN apt-get install -y obs-studio

#Définir le répertoire de travail
WORKDIR /home/wengo/image_docker_obs/workspace_obs

#Exposer le port dans le cas d'une diffusion 
EXPOSE 8080

#Lancer OBS par défaut dans le container
CMD ["obs"] 
 
