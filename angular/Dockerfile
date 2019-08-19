FROM node:12.8.0-alpine

LABEL maintainer="Thiago Mota <tgmspawn@gmail.com>"
LABEL version="0.0.1"
LABEL title="Angular Base Container"
LABEL description="A simple node container with Angular CLI environment to start develop"

RUN apk add yarn && \
    npm install --quiet --no-progress -g @angular/cli &> /dev/null

CMD ["/bin/sh"]