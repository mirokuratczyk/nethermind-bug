#!/bin/bash

set -e -u -x

./nethermind/Nethermind.Runner \
  --config aura_localnet.cfg \
  --Init.ChainSpecPath ./nethermind/chainspec/aura_localnet.json \
  --KeyStore.EnodeKeyFile node.key.plain \
  --log TRACE \
  --Init.PeerManagerEnabled false \
  --Init.IsMining true \
  --Mining.Enabled true \
  --Network.MaxActivePeers 0 \
  --Sync.NetworkingEnabled false \
  --Aura.AllowAuRaPrivateChains true

