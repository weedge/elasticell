#!/bin/bash
set -e

ELASTICELL_DIR=./data
init() {
    #make build
    CFG_DIR=$ELASTICELL_DIR/conf
    LOG_DIR=$ELASTICELL_DIR/log
    PD_DATA_DIR=$ELASTICELL_DIR/pd
    CELL_DATA_DIR=$ELASTICELL_DIR/cell
    mkdir -p $LOG_DIR
    mkdir -p $PD_DATA_DIR
    mkdir -p $CELL_DATA_DIR
}

start_elasticell_pd() {
    DATA_DIR=$PD_DATA_DIR/pd$1
    mkdir -p $DATA_DIR
    ./bin/pd --log-file=$LOG_DIR/pd$1.log --name=pd$1 --data=$DATA_DIR --addr-rpc=:2080$1 --urls-client=http://0.0.0.0:237$1 --urls-peer=http://127.0.0.1:238$1 --initial-cluster=pd1=http://127.0.0.1:2381,pd2=http://127.0.0.1:2382,pd3=http://127.0.0.1:2383 &
}

start_elasticell_cell() {
    DATA_DIR=$CELL_DATA_DIR/cell$1
    mkdir -p $DATA_DIR
    ./bin/cell --log-file=$LOG_DIR/cell$1.log --pd=127.0.0.1:20801,127.0.0.1:20802,127.0.0.1:20803 --addr=127.0.0.1:6080$1 --addr-cli=:637$1 --zone=zone-$1 --rack=rack-$1 --data=$DATA_DIR --interval-heartbeat-store=5 --interval-heartbeat-cell=2 &
}

start_elasticell_proxy() {
    ./bin/proxy --cfg=$CFG_DIR/proxy.json
}

init
echo "begin to start pd cluster"
start_elasticell_pd 1
sleep 1
start_elasticell_pd 2
start_elasticell_pd 3
echo "pd cluster is started"

sleep 2

echo "begin to start cell cluster"
start_elasticell_cell 1
sleep 1
start_elasticell_cell 2
start_elasticell_cell 3
echo "cell cluster is started"

sleep 5
echo "begin to start redis proxy"
start_elasticell_proxy
