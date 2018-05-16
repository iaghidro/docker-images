#!/bin/bash

ELECTRUM_VERSION="3.0.5";

export USER=root;

echo "::createWalletApps:: INSTALL PARITY DEPENDENCIED"
/bin/bash /container-scripts/wallet-apps/installParity.sh

#echo "::createWalletAppds:: INSTALL GETH DEPENDENCIED"
#/bin/bash /container-scripts/wallet-apps/installGeth.sh

echo "::createWalletApps:: INSTALL ELECTRUM DEPENDENCIED"
wget https://download.electrum.org/$ELECTRUM_VERSION/Electrum-$ELECTRUM_VERSION.tar.gz 
pip3 install Electrum-$ELECTRUM_VERSION.tar.gz
