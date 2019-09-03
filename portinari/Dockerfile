FROM node:12.8.1-buster-slim

LABEL maintainer="Thiago Mota <tgmspawn@gmail.com>"
LABEL version="0.0.1"
LABEL title="Portinari Start Container"
LABEL description="A started Portinari project"
LABEL "https://portinari.io"="Portinari UI"

# Determina se vai iniciar o Server ao criar/iniciar o container
ENV INIT_NG_SERVER=true

EXPOSE 4200

RUN apt update && \
    apt install -y yarn

RUN npm install -g @angular/cli
RUN npm install -g npm-add-script

WORKDIR /

RUN ng new app --skipInstall --skip-git

WORKDIR /app
RUN npm install
RUN ng add @portinari/portinari-ui
RUN npm install @portinari/portinari-templates

RUN sed -i 's/ng serve/ng serve --host 0.0.0.0/g' package.json

RUN sed -i 's/AppName/TGM Portinari Docker/g' ./src/app/app.component.html

COPY ./start.sh /
RUN chmod 777 /start.sh

# Guardo os arquivos gerados na pasta /template, exceto os node_modules
RUN mkdir /template/
RUN cp -rf `ls -A | grep -v "node_modules"` /template/

COPY ./start.sh /start.sh
CMD ["/start.sh"]
