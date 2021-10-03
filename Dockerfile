FROM ubuntu:20.04

RUN sudo apt update && sudo apt install -y ansible git
COPY run.sh /opt/run.sh
ENTRYPOINT ["/opt/run.sh"]
