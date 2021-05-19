#!/bin/bash

CONFIG_FILE=/etc/tron/mainnet_config.conf
CONFIG_LOG_FILE=/etc/tron/logback.xml

COMMAND="java -jar /usr/local/tron/FullNode.jar -c ${CONFIG_FILE} -d /data/output-directory/ --log-config ${CONFIG_LOG_FILE} "

echo ${COMMAND}
exec ${COMMAND}
