FROM ubuntu:noble-20250127

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y gcc python3-ansible-runner python3-pip
RUN groupadd -r ansible && useradd -m -g ansible -u 2000 ansible && mkdir -p /home/ansible/playbook

USER ansible
WORKDIR /home/ansible/playbook
