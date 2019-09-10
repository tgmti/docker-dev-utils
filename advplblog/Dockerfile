FROM node:current-slim

LABEL maintainer="Thiago Mota <tgmspawn@gmail.com>"
LABEL version="0.0.1"
LABEL title="Thiago´s Advpl Blog with Vuepress"
LABEL description="Rodar o Vuepress para escrever meu Blog"
LABEL vendor="https://tgmti.github.io/advpl/"

RUN apt update && \
    apt install -y yarn

RUN yarn global add @vue/cli
RUN yarn global add vuepress

WORKDIR /advpl

CMD ["/bin/sh"]