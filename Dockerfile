FROM ubuntu:20.04

RUN apt update && apt install -y git python3 python3-pip ansible
RUN mkdir -p /root/.ssh && \
        chmod 0700 /root/.ssh
COPY run.sh /opt/run.sh

ENTRYPOINT ["/opt/run.sh"]