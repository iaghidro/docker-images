
# Crypto Currency Docker Images

Docker images with preinstalled crypto currency wallets. Currently supporting Electrum, Parity, and Geth.

## Start/Configure Electrum 

    electrum setconfig rpcport $ELECTRUM_RPC_PORT;
    electrum daemon start;

 Add/create wallet file in the following directory:

    /root/.electrum/wallets

 Load wallet:
    electrum daemon load_wallet


## Start/Configure Parity 

    /usr/bin/parity \
    --cache-size 1000 \
    --jsonrpc-interface "127.0.0.1" \
    --jsonrpc-port 8545 \
    --jsonrpc-apis "web3,eth,pubsub,net,parity,parity_pubsub,traces,rpc,secretstore,personal" \
    --jsonrpc-threads 5 \
    --mode "active" \
    --geth \
    --no-serve-light >> /logs/trader.logs &


## Start/Configure Geth

    nohup geth --rpc \
        --rpcaddr "127.0.0.1" \
        --rpcport "8545" \
        --rpcapi "eth,db,rpc,shh,net,web3,personal" \
        --syncmode "light" \
        --cache 2000 >> /logs/trader.logs &
    echo "::restartEthereum:: Restarted geth successfully";

