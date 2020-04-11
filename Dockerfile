FROM debian:testing

RUN apt-get update && apt-get install -y --force-yes ansible git curl

WORKDIR /usr/local/bin
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
