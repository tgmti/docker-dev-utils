FROM tgmti/angular:0.0.1-buster

LABEL maintainer="Thiago Mota <tgmspawn@gmail.com>"
LABEL version="0.0.1-buster"
LABEL title="Portinari Ionic Base Container"
LABEL description="A image with Angular CLI and IONIC environment to start develop with PortinariUI"
LABEL vendor="http://portinari.io"

# Determina se vai iniciar o Ionic na abertura
ENV INIT_IONIC_SERVER=true

EXPOSE 8100


RUN npm install -g ionic
RUN npm install -g cordova

WORKDIR /

RUN ionic start app blank --no-deps --no-confirm --no-git

WORKDIR /app

#TODO: Ajustar as dependências antes do NPM install

RUN npm install @portinari/portinari-sync --save
RUN ionic cordova plugin add cordova-plugin-network-information
RUN npm install

# Depois de terminar de configurar, inserir o Script para o portinari
RUN npmAddScript -f -k ionicserve -v "ionic serve -b -p 8100 --address 0.0.0.0 --no-open"

# Guardo os arquivos gerados na pasta /template, exceto os node_modules
RUN mkdir /template/
RUN cp -rf `ls -A | grep -v "node_modules"` /template/

COPY ./start.sh /start.sh
CMD ["/start.sh"]
