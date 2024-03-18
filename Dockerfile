FROM golang:1.22.1-bookworm

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install git wget

# Gogs isntall
RUN git clone --depth 1 https://github.com/gogs/gogs.git gogs
WORKDIR gogs
RUN go build -o gogs
CMD ./gogs web
