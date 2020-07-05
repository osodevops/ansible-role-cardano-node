#!/bin/bash
# Environment variables are populated at runtime in /home/cardano/env_vars.sh

cardano-node run \
  --topology $CNODE_HOME/configuration/topology.json \
  --config $CNODE_HOME/configuration/config.json \
  --database-path $CNODE_HOME/db
  --socket-path $CNODE_HOME/socket/$NODE_TYPE \
  --host-addr 0.0.0.0 \
  --port $NODE_PORT \
