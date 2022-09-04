FROM debian:bullseye-slim

RUN apt-get update && apt-get upgrade -yqq

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install git 

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash

RUN apt install nodejs

ENTRYPOINT ["bash"]
