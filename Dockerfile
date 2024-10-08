FROM ubuntu

ENV APP_HOME /app
ENV CORE_GETH_DIR /core-geth

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
  apt install -y sudo build-essential software-properties-common git golang-go wget nano unzip

RUN mkdir $CORE_GETH_DIR
WORKDIR $CORE_GETH_DIR

RUN wget https://github.com/etclabscore/core-geth/releases/download/v1.12.20/core-geth-alltools-linux-v1.12.20.zip
RUN unzip core-geth-alltools-linux-v1.12.20.zip

RUN cp geth /usr/local/bin/
RUN cp clef /usr/local/bin/
RUN cp bootnode /usr/local/bin/
RUN cp devp2p /usr/local/bin/
RUN cp echainspec /usr/local/bin/
RUN cp era /usr/local/bin/
RUN cp ethkey /usr/local/bin/
RUN cp evm /usr/local/bin/
RUN cp p2psim /usr/local/bin/

RUN mkdir $APP_HOME
WORKDIR ..$APP_HOME

RUN rm -rf $CORE_GETH_DIR

COPY . $APP_HOME

EXPOSE 8551
EXPOSE 8545
