FROM tgmti/angular:0.0.1-buster

LABEL maintainer="Thiago Mota <tgmspawn@gmail.com>"
LABEL version="0.0.1"
LABEL title="Portinari Start Container"
LABEL description="A started Portinari project"
LABEL "https://portinari.io"="Portinari UI"

WORKDIR /app

RUN ng new my-po-project --skipInstall --skip-git

WORKDIR /app/my-po-project

RUN npm install

RUN ng add @portinari/portinari-ui

RUN npm install @portinari/portinari-templates

RUN sed -i 's/ng serve/ng serve --host 0.0.0.0/g' package.json

EXPOSE 4200

CMD ["npm","start"]
