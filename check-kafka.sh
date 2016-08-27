#!/bin/bash

############################
# Autor: Nick Metz
# Version: 0.1
# Required_Packages: jq
#
############################

CHECK="$1"

## ENV
ZOOKEEPER_HOST="localost"
ZOOKEEPER_PORT=2181
KAFKA_PATH="/opt/kafka"

KAFKA_CONSUMER_GROUPS=$(echo "ls /consumers" | ${KAFKA_PATH}/bin/zookeeper-shell.sh ${ZOOKEEPER_HOST}:${ZOOKEEPER_PORT})


## check packages
package() {

}

## print usage
usage() {
if [ -z "$CHECK" ];then
    cat <<EOF
usage: $0 [options]

available checks:

   zookeeper offset   - check zookeeper offset
   zookeeper servce   - check if zookeeper service is running 
   kafka service      - check if kafka service is running
   kafka replication  - check if all kafka partitions in sync
   kafka lag          - Max kafka lag warning(-w) and critical(-c)
   kafka msg rate     - Consuming message rate
   kafka logfiles     - Check Kafka Logfiles for errors

EOF
fi
}

case $CHECK in
    *)
       echo "Please select a valid Check" 
    ;;














usagae




