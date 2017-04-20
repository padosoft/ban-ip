#!/bin/sh

# Authors: @lopadova
# https://github.com/lopadova
# https://github.com/padosoft

if [[ ($# < 1) ]]; then
  printf '%s\n%s\n' \
    'USAGE: banip.sh IPTOBAN NOSAVE' \
    'IPTOBAN IP to ban in IPTables'  \
    'NOSAVE=1: if you pass NOSAVE=1 the batch only add IP to iptables and NO iptables-save calls. Default NOSAVE=0.'  \
    'EXAMPLE: banip.sh 192.168.0.18' \
    'OR banip.sh 192.168.0.18 1'  >&2
  exit
fi

IPTOBAN=$1
NOSAVE=$2
BANCOMMAND="iptables -I INPUT -s ${IPTOBAN} -j DROP"
RULESPATH="/etc/iptables/rules"
IPTABLESAVECOMMAND="iptables-save > ${RULESPATH}"

if [ -z $NOSAVE ]; then
    NOSAVE=0
fi

_now=$(date +%Y-%m-%d.%H.%M.%S)
echo "banip start at ${_now}"

echo "ban ip ${IPTOBAN}"
${BANCOMMAND}

if [ $NOSAVE != 1 ]; then
	echo "save iptables rules to ${RULESPATH}"
	echo "${IPTABLESAVECOMMAND}"
    ${IPTABLESAVECOMMAND}
fi

_end=$(date +%Y-%m-%d.%H.%M.%S)
echo "banip finish at ${_end}"
