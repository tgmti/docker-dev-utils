FROM tgmti/angular:0.0.1-buster AS builder

WORKDIR /

RUN ng new my-po-project --skipInstall --skip-git

WORKDIR /my-po-project

RUN npm install

RUN ng add @portinari/portinari-ui

RUN npm install @portinari/portinari-templates

RUN sed -i 's/ng serve/ng serve --host 0.0.0.0/g' package.json

# Limpar a pasta node_modules
RUN rm -rf /my-po-project/node_modules


FROM tgmti/angular:0.0.1-buster

LABEL maintainer="Thiago Mota <tgmspawn@gmail.com>"
LABEL version="0.0.1"
LABEL title="Portinari Start Container"
LABEL description="A started Portinari project"
LABEL "https://portinari.io"="Portinari UI"

EXPOSE 4200

COPY ./start.sh /
RUN chmod 777 /start.sh

WORKDIR /template

COPY --from=builder /my-po-project/ .

WORKDIR /app/

CMD ["/start.sh"]
