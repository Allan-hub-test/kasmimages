FROM kasmweb\ubuntu-focal-dind:latest

RUN apt-get update -y && apt-get install -y software-properties-common wget ca-certificates gnupg

RUN add-apt-repository ppa:obsproject/obs-studio

RUN apt-get update -y

RUN apt-get install -y obs-studio

WORKDIR /workspace

EXPOSE 8080

CMD ["obs"]
