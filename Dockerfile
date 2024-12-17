FROM kasmweb/ubuntu-focal-dind:1.16.1

USER root
RUN apt-get update -y && apt-get install -y software-properties-common wget ca-certificates gnupg

RUN add-apt-repository ppa:obsproject/obs-studio

RUN apt-get update -y

RUN apt-get install -y obs-studio

WORKDIR /workspace

EXPOSE 8080
 
USER user 

CMD ["obs"]
