FROM debian:buster

RUN apt-get update && apt-get install -y ansible

ADD files /tmp/files

RUN ansible-galaxy install geerlingguy.java && ansible-galaxy install geerlingguy.jenkins && ansible-playbook /tmp/files/jenkins.yaml

ENTRYPOINT service jenkins start && bash