FROM amazonlinux:1

WORKDIR /tmp

RUN yum -y install gcc-c+ findutils
RUN touch ~/.bashrc && chmod +x ~/.bashrc
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
RUN source ~/.bashrc && nvm install 6.10
WORKDIR /build
