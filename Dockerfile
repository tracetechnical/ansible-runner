FROM ubuntu:20.04

RUN mkdir -p /root/.ssh && \
        chmod 0700 /root/.ssh && \
        ssh-keyscan -t rsa github.com >> /root/.ssh/known_hosts
RUN apt update && apt install -y ansible git

COPY run.sh /opt/run.sh

ENTRYPOINT ["/opt/run.sh"]