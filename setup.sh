#!/bin/bash

set -e -u -x

wget https://github.com/NethermindEth/nethermind/releases/download/1.12.3/nethermind-darwin-amd64-1.12.3-f5f0d94-20211216.zip
unzip nethermind-darwin-amd64-1.12.3-f5f0d94-20211216.zip -d nethermind

cp ./aura_localnet.json{.stub,}

sed -i '' 's/0xvalidator_pubkey/0x70fa03a444edff99acdc7b55925a92007a2cf680/g' aura_localnet.json
echo -n "xfRiQVkfI2HUkj8vUYHgbL/pSmHRCnXH6C2xgHTO8S4=" | base64 --decode > ./nethermind/keystore/node.key.plain

cp ./aura_localnet.cfg ./nethermind/configs/
cp ./aura_localnet.json ./nethermind/chainspec/

