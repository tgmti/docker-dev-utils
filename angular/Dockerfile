FROM node:12.8.0-alpine

RUN apk add yarn && \
    npm install --quiet --no-progress -g @angular/cli@8.0.1 &> /dev/null && \
    npm install --quiet --no-progress -g ionic@4.1.2 &> /dev/null


CMD ["/bin/sh"]