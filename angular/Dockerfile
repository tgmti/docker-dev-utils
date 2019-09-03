FROM node:12.8.1-buster-slim

LABEL maintainer="Thiago Mota <tgmspawn@gmail.com>"
LABEL version="0.0.1-buster"
LABEL title="Angular Base Container"
LABEL description="A simple node container with Angular CLI environment to start develop"

RUN apt update && \
    apt install -y yarn

RUN npm install -g @angular/cli
RUN npm install -g npm-add-script

CMD ["/bin/sh"]