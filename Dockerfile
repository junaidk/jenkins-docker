FROM jenkins/jenkins:2.263.1

USER root
RUN apt-get update && apt-get install -y sudo
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN apt-get install -y rsync && apt-get install -y curl

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -a -G staff jenkins

#RUN groupadd docker
RUN usermod -aG docker jenkins

USER jenkins
