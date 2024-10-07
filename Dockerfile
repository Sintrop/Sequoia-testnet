FROM ubuntu

ENV APP_HOME /app

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
  apt install -y sudo build-essential software-properties-common git golang-go wget nano

RUN wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.13.15-c5ba367e.tar.gz
RUN tar -xvf geth-linux-amd64-1.13.15-c5ba367e.tar.gz

RUN mkdir $APP_HOME

WORKDIR geth-linux-amd64-1.13.15-c5ba367e

RUN echo pwd

RUN chmod +x geth
RUN cp geth /usr/local/bin/

RUN sudo add-apt-repository -y ppa:ethereum/ethereum
RUN sudo apt-get update -qq
RUN sudo apt-get install -y ethereum

WORKDIR ..$APP_HOME

COPY . $APP_HOME

EXPOSE 8551
EXPOSE 8545

# geth --datadir ./store init genesis.json
# geth --identity Sequoia --datadir ./store  -authrpc.addr localhost --authrpc.port 8551 --http.vhosts=* --http.addr "0.0.0.0" --http=true

# geth --identity Sequoia --datadir ./store  -authrpc.addr localhost --authrpc.port 8551 --http.vhosts=* --http.addr "0.0.0.0" --http=true console


# RUN clef newaccount --keystore store/keystore
# RUN geth --datadir ./store --networkid 8888 console


var primary = "0x900Bd2Ed98be55299928AD1dA36b50021eC1856D"
balance = web3.fromWei(eth.getBalance(primary), "ether");


web3.personal.unlockAccount("0xD1aF7DCb65fB66bf2FD2b12a92367Df0609C1770", "1234567890", 15000)
eth.sendTransaction({from: "0xD1aF7DCb65fB66bf2FD2b12a92367Df0609C1770", to: "0x900Bd2Ed98be55299928AD1dA36b50021eC1856D", value: web3.toWei(10)})



# SinEth
# http://127.0.0.1:8551
