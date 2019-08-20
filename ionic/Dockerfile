FROM tgmti/angular:0.0.1

LABEL maintainer="Thiago Mota <tgmspawn@gmail.com>"
LABEL version="0.0.1"
LABEL title="Ionic Base Container"
LABEL description="A container with Angular CLI and IONIC environment to start develop"

RUN npm install --quiet --no-progress -g ionic@4.1.2 &> /dev/null

WORKDIR /app

RUN ionic start app-getting-start blank --no-deps --no-confirm --no-git

WORKDIR /app/app-getting-start

#TODO: Ajustar as dependências antes do NPM install

RUN npm install \
    npm install @portinari/portinari-sync --save \
    ionic cordova plugin add cordova-plugin-network-information

CMD ["ionic","serve"]
