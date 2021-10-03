FROM ubuntu:20.04

RUN ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
RUN apt update && apt install -y ansible git

COPY run.sh /opt/run.sh

ENTRYPOINT ["/opt/run.sh"]