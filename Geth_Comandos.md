


# GETH

## Iniciar Blockchain a partir do genesis.json

```
geth --datadir ./store init genesis.json
```

## Executar node

```
geth --identity Sequoia --datadir ./store  -authrpc.addr localhost --authrpc.port 8551 --http.vhosts=* --http.addr "0.0.0.0" --http=true

OU entrando no console

geth --identity Sequoia --datadir ./store  -authrpc.addr localhost --authrpc.port 8551 --http.vhosts=* --http.addr "0.0.0.0" --http=true console
```

## Iniciar mineração

```
miner.setEtherbase('0x900Bd2Ed98be55299928AD1dA36b50021eC1856D') # Setar endereço que receberá recompesas da mineração (se já não tiver setado)

miner.start()
```


# CLEF

## Criar nova conta para a blockchain

```
clef newaccount --keystore store/keystore
```



# WEB3

## Checar total de tokens de certo endereço

```
balance = web3.fromWei(eth.getBalance("0xD1aF7DCb65fB66bf2FD2b12a92367Df0609C1770"), "ether");
```

# Checar block atual e visualizar bloco atual

```
eth.blockNumber
web3.eth.getBlock(eth.blockNumber)
```



