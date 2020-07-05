#!/usr/bin/env bash
CNODE_HOME=/opt/cardano/cnode
NODE_SOCKET_PATH=$CNODE_HOME/sockets/node0.socket
export CARDANO_NODE_SOCKET_PATH=$CNODE_HOME/sockets/node0.socket
export CONFIG_JSON=$CNODE_HOME/configuration/config.json
export GENESIS_JSON=$CNODE_HOME/configuration/genesis.json
export TOPOLOGY_JSON=$CNODE_HOME/configuration/topology.json
MAGIC=$(jq -r .protocolMagicId < $GENESIS_JSON)
NWMAGIC=$(jq -r .networkMagic < $GENESIS_JSON)
export NODE_TYPE=@TYPE@ #replace this with correct value are run time
export NODE_PORT=@PORT@ #replace this with correct value are run time
